--[[
	General configuration settings for OmniCC
--]]

local OmniCCOptions = OmniCCOptions
local OmniCC = OmniCC
local Timer = OmniCC.Timer
local L = OMNICC_LOCALS

--fun constants!
local BUTTON_SPACING = 8
local SLIDER_SPACING = 24

local GeneralOptions = CreateFrame('Frame', 'OmniCCOptions_General')
GeneralOptions:SetScript('OnShow', function(self)
	self:AddWidgets()
	self:UpdateValues()
	self:SetScript('OnShow', nil)
end)

function GeneralOptions:GetGroupSets()
	return OmniCCOptions:GetGroupSets()
end


--[[
	Widgets
--]]

function GeneralOptions:AddWidgets()
	local enableCDText = self:CreateEnableTextCheckbox()
	enableCDText:SetPoint('TOPLEFT', self, 'TOPLEFT', 12, -10)

	local scaleText = self:CreateScaleTextCheckbox()
	scaleText:SetPoint('TOPLEFT', enableCDText, 'BOTTOMLEFT', 0, -BUTTON_SPACING)

	local showModels = self:CreateShowCooldownModelsCheckbox()
	showModels:SetPoint('TOPLEFT', scaleText, 'BOTTOMLEFT', 0, -BUTTON_SPACING)

    local aniUpdate = self:CreateUseAniUpdaterCheckbox()
    aniUpdate:SetPoint('TOPLEFT', showModels, 'BOTTOMLEFT', 0, -BUTTON_SPACING)

	local finishEffect = self:CreateFinishEffectPicker()
	finishEffect:SetPoint('TOPLEFT', aniUpdate, 'BOTTOMLEFT', -16, -(BUTTON_SPACING + 16))

	--sliders
	local minEffectDuration = self:CreateMinEffectDurationSlider()
	minEffectDuration:SetPoint('BOTTOMLEFT', self, 'BOTTOMLEFT', 16, 10)
	minEffectDuration:SetPoint('BOTTOMRIGHT', self, 'BOTTOMRIGHT', -16, 10)

	local mmSSDuration = self:CreateMMSSSlider()
	mmSSDuration:SetPoint('BOTTOMLEFT', minEffectDuration, 'TOPLEFT', 0, SLIDER_SPACING)
	mmSSDuration:SetPoint('BOTTOMRIGHT', minEffectDuration, 'TOPRIGHT', 0, SLIDER_SPACING)

	local tenthsDuration = self:CreateTenthsSlider()
	tenthsDuration:SetPoint('BOTTOMLEFT', mmSSDuration, 'TOPLEFT', 0, SLIDER_SPACING)
	tenthsDuration:SetPoint('BOTTOMRIGHT', mmSSDuration, 'TOPRIGHT', 0, SLIDER_SPACING)

	local minDuration = self:CreateMinDurationSlider()
	minDuration:SetPoint('BOTTOMLEFT', tenthsDuration, 'TOPLEFT', 0, SLIDER_SPACING)
	minDuration:SetPoint('BOTTOMRIGHT', tenthsDuration, 'TOPRIGHT', 0, SLIDER_SPACING)

	local minSize = self:CreateMinSizeSlider()
	minSize:SetPoint('BOTTOMLEFT', minDuration, 'TOPLEFT', 0, SLIDER_SPACING)
	minSize:SetPoint('BOTTOMRIGHT', minDuration, 'TOPRIGHT', 0, SLIDER_SPACING)
end

function GeneralOptions:UpdateValues()
	if self.buttons then
		for i, b in pairs(self.buttons) do
			b:UpdateChecked()
		end
	end

	if self.sliders then
		for i, s in pairs(self.sliders) do
			s:UpdateValue()
		end
	end

	if self.dropdowns then
		for i, dd in pairs(self.dropdowns) do
			dd:UpdateValue()
		end
	end
end


--[[ Checkboxes ]]--

function GeneralOptions:NewCheckbox(name)
	local b = OmniCCOptions.CheckButton:New(name, self)

	self.buttons = self.buttons or {}
	table.insert(self.buttons, b)
	return b
end

--scale text
function GeneralOptions:CreateEnableTextCheckbox()
	local parent = self
	local b = self:NewCheckbox(L.EnableText)

	b.OnEnableSetting = function(self, enable)
		parent:GetGroupSets().enabled = enable
		Timer:ForAllShown('UpdateShown')
	end

	b.IsSettingEnabled = function(self)
		return parent:GetGroupSets().enabled
	end

	b.tooltip = L.EnableTextTip

	return b
end

--scale text
function GeneralOptions:CreateScaleTextCheckbox()
	local parent = self
	local b = self:NewCheckbox(L.ScaleText)

	b.OnEnableSetting = function(self, enable)
		parent:GetGroupSets().scaleText = enable
		Timer:ForAllShown('UpdateText', true)
	end

	b.IsSettingEnabled = function(self)
		return parent:GetGroupSets().scaleText
	end

	b.tooltip = L.ScaleTextTip

	return b
end

--show cooldown models
function GeneralOptions:CreateShowCooldownModelsCheckbox()
	local parent = self
	local b = self:NewCheckbox(L.ShowCooldownModels)

	b.OnEnableSetting = function(self, enable)
		parent:GetGroupSets().showCooldownModels = enable
		Timer:ForAllShown('UpdateCooldownShown')
	end

	b.IsSettingEnabled = function(self)
		return parent:GetGroupSets().showCooldownModels
	end

	b.tooltip = L.ShowCooldownModelsTip
    b.smallTip = L.ShowCooldownModelsSmallTip

	return b
end

--use classic updater
function GeneralOptions:CreateUseAniUpdaterCheckbox()
    local b = self:NewCheckbox(L.UseAniUpdater)

    b.OnEnableSetting = function(self, enable)
        if OmniCC:GetUpdateEngineName() == 'ClassicUpdater' then
            OmniCC:SetUpdateEngine(nil)
        else
            OmniCC:SetUpdateEngine('ClassicUpdater')
        end
    end

    b.IsSettingEnabled = function(self)
        return OmniCC:GetUpdateEngineName() ~= 'ClassicUpdater'
    end

    b.tooltip = L.UseAniUpdaterTip
    b.smallTip = L.UseAniUpdaterSmallTip

    return b
end

--[[ Sliders ]]--

function GeneralOptions:NewSlider(name, low, high, step)
	local s = OmniCCOptions.Slider:New(name, self, low, high, step)
	s:SetHeight(s:GetHeight() + 2)

	self.sliders = self.sliders or {}
	table.insert(self.sliders, s)
	return s
end

do
	local SECONDS_ABBR = '%.1f' .. (SECONDS_ABBR:match('%%d(.+)'))
	function GeneralOptions:CreateMinDurationSlider()
		local parent = self
		local s = self:NewSlider(L.MinDuration, 0, 30, 0.5)

		s.SetSavedValue = function(self, value)
			parent:GetGroupSets().minDuration = value
		end

		s.GetSavedValue = function(self)
			return parent:GetGroupSets().minDuration
		end

		s.GetFormattedText = function(self, value)
			return SECONDS_ABBR:format(value)
		end

		s.tooltip = L.MinDurationTip

		return s
	end
end

function GeneralOptions:CreateMinSizeSlider()
	local parent = self
	local s = self:NewSlider(L.MinSize, 0, 200, 1)

	s.SetSavedValue = function(self, value)
		parent:GetGroupSets().minSize = value/100
		Timer:ForAllShown('UpdateShown')
	end

	s.GetSavedValue = function(self)
		return floor(parent:GetGroupSets().minSize * 100)
	end

	s.tooltip = L.MinSizeTip

	return s
end

function GeneralOptions:CreateMinEffectDurationSlider()
	local parent = self
	local s = self:NewSlider(L.MinEffectDuration, 0, 60, 1)

	s.SetSavedValue = function(self, value)
		parent:GetGroupSets().minEffectDuration = value
	end

	s.GetSavedValue = function(self)
		return parent:GetGroupSets().minEffectDuration
	end

	s.GetFormattedText = function(self, value)
		return SECONDS_ABBR:format(value)
	end

	s.tooltip = L.MinEffectDurationTip

	return s
end

do
	local MINUTES_ABBR = '%.1f' .. (MINUTES_ABBR:match('%%d(.+)'))
	function GeneralOptions:CreateMMSSSlider()
		local parent = self
		local s = self:NewSlider(L.MMSSDuration, 1, 15, 0.5)

		s.SetSavedValue = function(self, value)
			if value > 1 then
				parent:GetGroupSets().mmSSDuration = value * 60
			else
				parent:GetGroupSets().mmSSDuration = 0
			end
			Timer:ForAllShown('UpdateText')
		end

		s.GetSavedValue = function(self)
			if parent:GetGroupSets().mmSSDuration > 60 then
				return parent:GetGroupSets().mmSSDuration / 60
			end
			return 1
		end

		s.GetFormattedText = function(self, value)
			if value > 1 then
				return MINUTES_ABBR:format(value)
			end
			return NEVER
		end

		s.tooltip = L.MMSSDurationTip

		return s
	end
end

function GeneralOptions:CreateTenthsSlider()
	local parent = self
	local s = self:NewSlider(L.TenthsDuration, 0, 10, 1)

	s.SetSavedValue = function(self, value)
		parent:GetGroupSets().tenthsDuration = value
		Timer:ForAllShown('UpdateText')
	end

	s.GetSavedValue = function(self)
		return parent:GetGroupSets().tenthsDuration
	end

	s.GetFormattedText = function(self, value)
		if value > 0 then
			return SECONDS_ABBR:format(value)
		end
		return NEVER
	end

	s.tooltip = L.TenthsDurationTip

	return s
end



--[[ Dropdown ]]--

function GeneralOptions:CreateFinishEffectPicker()
	local parent = self
	local dd = OmniCCOptions.Dropdown:New(L.FinishEffect, parent, 120)

	local effects = OmniCC:ForEachEffect(function(effect) return {name = effect.name, value = effect.id, tooltip = effect.desc} end)
	table.sort(effects, function(e1, e2) return e1.name < e2.name end)
	table.insert(effects, 1, {name = NONE, value = 'none'})

	dd.SetSavedValue = function(self, value)
		parent:GetGroupSets().effect = value
	end

	dd.GetSavedValue = function(self)
		return parent:GetGroupSets().effect
	end

	dd.GetSavedText = function(self)
		local effect = OmniCC:GetEffect(self:GetSavedValue())
		if effect then
			return effect.name
		end
		return NONE
	end

	UIDropDownMenu_Initialize(dd, function(self)
		for n, v in ipairs(effects) do
			self:AddItem(v.name, v.value, v.tooltip)
		end
	end)

	self.dropdowns = self.dropdowns or {}
	table.insert(self.dropdowns, dd)

	return dd
end

--[[ Load the thing ]]--

OmniCCOptions:AddTab('general', L.GeneralSettings, GeneralOptions)