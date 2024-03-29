local RaidTargetReference
local _

if (tonumber((select(2, GetBuildInfo()))) >= 14299) then
	-- 4.2
	RaidTargetReference = {
		["STAR"] = 0x00000001,
		["CIRCLE"] = 0x00000002,
		["DIAMOND"] = 0x00000004,
		["TRIANGLE"] = 0x00000008,
		["MOON"] = 0x00000010,
		["SQUARE"] = 0x00000020,
		["CROSS"] = 0x00000040,
		["SKULL"] = 0x00000080,
	}
else
	 -- 4.1
	 RaidTargetReference = {
		["STAR"] = 0x00100000,
		["CIRCLE"] = 0x00200000,
		["DIAMOND"] = 0x00400000,
		["TRIANGLE"] = 0x00800000,
		["MOON"] = 0x01000000,
		["SQUARE"] = 0x02000000,
		["CROSS"] = 0x04000000,
		["SKULL"] = 0x08000000,
	}
end

-------------------------------------------------------------------------
-- Spell Cast Event Watcher.
-------------------------------------------------------------------------
local CombatCastEventWatcher
local CombatLogEventHandlers = {}
local StartCastAnimationOnNameplate = TidyPlates.StartCastAnimationOnNameplate		-- If you don't define this as a local reference, the 'Tidy Plates' table will get passed to the function if you use ':' to call the function.

local function SearchNameplateByGUID(SearchFor)
	local VisiblePlate, UnitGUID
	for VisiblePlate in pairs(TidyPlates.NameplatesByVisible) do
		UnitGUID = VisiblePlate.extended.unit.guid
		if UnitGUID and UnitGUID == SearchFor then									-- BY GUID
			return VisiblePlate
		end
	end
end

local function SearchNameplateByName(NameString)
	local VisiblePlate
	local SearchFor = strsplit("-", NameString)
	for VisiblePlate in pairs(TidyPlates.NameplatesByVisible) do
		if VisiblePlate.extended.unit.name == SearchFor then										-- BY NAME
			return VisiblePlate
		end
	end
end

local function SearchNameplateByIcon(UnitFlags)
	local UnitIcon
	for iconname, bitmask in pairs(RaidTargetReference) do
		if bit.band(UnitFlags, bitmask) > 0  then
			UnitIcon = iconname
			break
		end
	end	

	local VisiblePlate = nil
	for VisiblePlate in pairs(TidyPlates.NameplatesByVisible) do
		if VisiblePlate.extended.unit.isMarked and (VisiblePlate.extended.unit.raidIcon == UnitIcon) then	-- BY Icon
			return VisiblePlate
		end
	end
end

--------------------------------------
-- Combat Log Events
--------------------------------------
local function OnSpellCast(...)
	local sourceGUID, sourceName, sourceFlags, sourceRaidFlags, spellid, spellname = ...
	local FoundPlate = nil
	
	-- Gather Spell Info
	local spell, displayName, icon, castTime, _
	spell, displayName, icon, _, _, _, castTime, _, _ = GetSpellInfo(spellid)
	
	
	-- Testing: Always make the casts a minimum of 1.5 seconds
	castTime = max(castTime, 1500)
	--if not (castTime > 0) then return end
	
	if bit.band(sourceFlags, COMBATLOG_OBJECT_REACTION_HOSTILE) > 0 then 
		if bit.band(sourceFlags, COMBATLOG_OBJECT_CONTROL_PLAYER) > 0 then 
			--	destination plate, by name
			FoundPlate = SearchNameplateByName(sourceName)
		elseif bit.band(sourceFlags, COMBATLOG_OBJECT_CONTROL_NPC) > 0 then 
			--	destination plate, by GUID
			FoundPlate = SearchNameplateByGUID(sourceGUID)
			if not FoundPlate then FoundPlate = SearchNameplateByIcon(sourceRaidFlags) end
		else return	end
	else return end

	-- If the unit's nameplate is visible, show the cast bar
	if FoundPlate then 
		local currentTime = GetTime()
		FoundPlateUnit = FoundPlate.extended.unit
		if FoundPlateUnit.isTarget then return end
		
		castTime = (castTime / 1000)	-- Convert to seconds
		-- StartCastAnimation(plate, spell, spellid, icon, startTime, endTime, notInterruptible, channel)
		StartCastAnimationOnNameplate(FoundPlate, spell, spellid, icon, currentTime, currentTime+castTime, false, false)
	end
end

-- SPELL_CAST_START -- Non-channeled spells
function CombatLogEventHandlers.SPELL_CAST_START(...)
	local source = ...
	--if source == UnitGUID("player") then print(GetTime(), ...) end
	OnSpellCast(...)
end

--[[
-- SPELL_CAST_SUCCESS -- Channeled and Instant spells
function CombatLogEventHandlers.SPELL_CAST_SUCCESS(...)
	OnSpellCast(..., true)
end
--]]

--------------------------------------
-- Combat Log Conversion
--------------------------------------

--local GetCombatEventResults
--if (tonumber((select(2, GetBuildInfo()))) >= 14299) then end

-- 4.2
local function GetCombatEventResults(...)
	local timestamp, combatevent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlag, spellid, spellname = ...	
	return combatevent, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, spellid, spellname	
end


-----------------------------------
-- Game Events
-----------------------------------
local GameEvents = {}

function GameEvents.COMBAT_LOG_EVENT_UNFILTERED(...)
	local combatevent, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, spellid, spellname = GetCombatEventResults(...)
	if CombatLogEventHandlers[combatevent] and sourceGUID ~= UnitGUID("target") then CombatLogEventHandlers[combatevent](sourceGUID, sourceName, sourceFlags, sourceRaidFlags, spellid, spellname) end	
	
end

function GameEvents.PLAYER_ENTERING_WORLD(...)
	CombatCastEventWatcher:UnregisterAllEvents()
	
	local isInstance, instanceType = IsInInstance()
	if instanceType and instanceType == "arena" then
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_START");
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_STOP");
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_INTERRUPTED");
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_FAILED");
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_DELAYED");
		--CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_INTERRUPTIBLE");
		--CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_NOT_INTERRUPTIBLE");
		
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START");
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP");
		CombatCastEventWatcher:RegisterEvent("UNIT_SPELLCAST_CHANNEL_UPDATE");
			
		--[[
		UNIT_SPELLCAST_CHANNEL_START	Fires when a unit starts channeling a spell
		UNIT_SPELLCAST_CHANNEL_STOP	Fires when a unit stops or cancels a channeled spell
		UNIT_SPELLCAST_CHANNEL_UPDATE	Fires when a unit's channeled spell is interrupted or delayed
		UNIT_SPELLCAST_DELAYED	Fires when a unit's spell cast is delayed
		UNIT_SPELLCAST_FAILED	Fires when a unit's spell cast fails
		UNIT_SPELLCAST_FAILED_QUIET	Fires when a unit's spell cast fails and no error message should be displayed
		UNIT_SPELLCAST_INTERRUPTED	Fires when a unit's spell cast is interrupted
		UNIT_SPELLCAST_INTERRUPTIBLE	Fires when a unit's spell cast becomes interruptible again
		UNIT_SPELLCAST_NOT_INTERRUPTIBLE	Fires when a unit's spell cast becomes uninterruptible
		UNIT_SPELLCAST_SENT	Fires when a request to cast a spell (on behalf of the player or a unit controlled by the player) is sent to the server
		UNIT_SPELLCAST_START	Fires when a unit begins casting a spell
		UNIT_SPELLCAST_STOP	Fires when a unit stops or cancels casting a spell
		UNIT_SPELLCAST_SUCCEEDED	Fires when a unit's spell cast succeeds
		--]]
	
	else
		CombatCastEventWatcher:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
	end
	
	CombatCastEventWatcher:RegisterEvent("PLAYER_ENTERING_WORLD");
	
end

function GameEvents.UNIT_SPELLCAST_START(...)
	local unitid = ...
	if UnitIsFriend("player", unitid) then return end	
	local plate = SearchNameplateByName(UnitName(unitid))
	
	if plate then
		local spell, _, name, icon, start, finish, _, spellid, nonInt = UnitCastingInfo(unitid)
		
		if spell then StartCastAnimationOnNameplate(plate, spell, spellid, icon, start/1000, finish/1000, nonInt, false) 
		else StopCastAnimation(plate) end
	end
end

function GameEvents.UNIT_SPELLCAST_CHANNEL_START(...)
	local unitid = ...
	if UnitIsFriend("player", unitid) then return end																				
	local plate = SearchNameplateByName(UnitName(unitid))
	
	if plate then
		local spell, _, name, icon, start, finish, spellid, nonInt = UnitChannelInfo("target")	
		
		if spell then StartCastAnimationOnNameplate(plate, spell, spellid, icon, start/1000, finish/1000, nonInt, true) 
		else StopCastAnimation(plate) end
	end
end

--[[
function GameEvents.UNIT_SPELLCAST_STOP(...)
	StopCastAnimation(plate)
end
--]]

GameEvents.UNIT_SPELLCAST_STOP = GameEvents.UNIT_SPELLCAST_START
GameEvents.UNIT_SPELLCAST_INTERRUPTED = GameEvents.UNIT_SPELLCAST_START
GameEvents.UNIT_SPELLCAST_FAILED = GameEvents.UNIT_SPELLCAST_START
GameEvents.UNIT_SPELLCAST_DELAYED = GameEvents.UNIT_SPELLCAST_START
--GameEvents.UNIT_SPELLCAST_INTERRUPTIBLE = GameEvents.UNIT_SPELLCAST_START
--GameEvents.UNIT_SPELLCAST_NOT_INTERRUPTIBLE = GameEvents.UNIT_SPELLCAST_START

GameEvents.UNIT_SPELLCAST_CHANNEL_STOP = GameEvents.UNIT_SPELLCAST_CHANNEL_START
GameEvents.UNIT_SPELLCAST_CHANNEL_UPDATE = GameEvents.UNIT_SPELLCAST_CHANNEL_START

-- 4.2
local function OnEvent(self, event, ...)
	local eventFunction = GameEvents[event]
	if eventFunction then eventFunction(...) end
end

-----------------------------------
-- External control functions
-----------------------------------

--/run TidyPlates:StartSpellCastWatcher()
local function StartSpellCastWatcher()
	if not CombatCastEventWatcher then CombatCastEventWatcher = CreateFrame("Frame") end
	CombatCastEventWatcher:SetScript("OnEvent", OnEvent) 
	CombatCastEventWatcher:RegisterEvent("PLAYER_ENTERING_WORLD");
	GameEvents:PLAYER_ENTERING_WORLD()
end

local function StopSpellCastWatcher()
	if CombatCastEventWatcher then 
		CombatCastEventWatcher:SetScript("OnEvent", nil)
		CombatCastEventWatcher:UnregisterAllEvents()
		CombatCastEventWatcher = nil
	end
end

TidyPlates.StartSpellCastWatcher = StartSpellCastWatcher
TidyPlates.StopSpellCastWatcher = StopSpellCastWatcher

-- To test spell cast: /run TestTidyPlatesCastBar("Boognish", 133, true)		-- The spell ID number of Fireball is 133
function TestTidyPlatesCastBar(SearchFor, SpellID, Shielded, ForceChanneled)
	local VisiblePlate, FoundPlate
	local currentTime = GetTime()
	local spell, displayName, icon, _, _, _, castTime, _, _ = GetSpellInfo(SpellID)
	local channel
	
	print("Testing Spell Cast on", SearchFor)
	-- Search for the nameplate, by name (you could also search by GUID)
	for VisiblePlate in pairs(TidyPlates.NameplatesByVisible) do
	   if VisiblePlate.extended.unit.name == SearchFor then
		  FoundPlate = VisiblePlate
	   end
	end

	if ForceChanneled ~= nil then 
		channel = ForceChanneled
		if ForceChanneled then castTime = castTime + 2412 end
	else channel = false end
		
	-- If found, display the cast bar
	if FoundPlate then StartCastAnimationOnNameplate(FoundPlate, spell, spell, icon, currentTime, currentTime+(castTime/1000), Shielded, channel) end
end