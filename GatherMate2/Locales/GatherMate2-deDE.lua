-- GatherMate Locale
-- Please use the Localization App on WoWAce to Update this
-- http://www.wowace.com/projects/gathermate2/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("GatherMate2", "deDE")
if not L then return end

L["Add this location to Cartographer_Waypoints"] = "Diese Stelle zu Cartographer_Waypoints hinzufügen"
L["Add this location to TomTom waypoints"] = "Diese Stelle zu TomTom hinzufügen"
L["Always show"] = "Immer anzeigen"
L["Archaeology"] = "Archäologie"
L["Archaeology filter"] = "Archäologie Filter"
L["Are you sure you want to delete all nodes from this database?"] = "Bist Du sicher, daß Du alle Knoten von dieser Datenbank löschen willst?"
L["Are you sure you want to delete all of the selected node from the selected zone?"] = "Bist Du sicher, daß Du alle ausgewählten Knoten aus der ausgewählten Zone löschen willst?"
L["Auto Import"] = "Automatisch importieren"
L["Auto import complete for addon "] = "Automatischer Import abgeschlossen. Quelle: "
L["Automatically import when ever you update your data module, your current import choice will be used."] = "Immer automatisch importieren wenn das Datenmodul aktualisiert wurde. Die momentanen Importeinstellungen werden dabei benutzt."
L["Cataclysm"] = "Cataclysm"
L["Cleanup Complete."] = "Aufräumen abgeschlossen."
L["Cleanup Database"] = "Datenbank aufräumen"
L["Cleanup_Desc"] = "Nach einer gewissen Zeit kann Deine Datenbank 'zugemüllt' sein. 'Datenbank aufräumen' sucht nach Knoten eines Berufs die nah zusammenliegen und ermittelt ob diese zu einem einzelnen Knoten zusammengefasst werden können."
L["Cleanup radius"] = "Aufräumradius"
L["CLEANUP_RADIUS_DESC"] = "Radius (in Meter) in dem doppelte Knoten gelöscht werden sollen. Standard ist |cffffd20050m|r für Gas extrahieren und |cffffd20015m|r für alles andere. Diese Einstellungen werden auch benutzt wenn Knoten hinzugefügt werden."
L["Cleanup your database by removing duplicates. This takes a few moments, be patient."] = "Räumt die Datenbank auf indem doppelte Einträge gelöscht werden. Der Vorgang dauert ein paar Momente."
L["Clear database selections"] = "Lösche Datenbank Auswahl"
L["Clear node selections"] = "Auswahl löschen"
L["Clear zone selections"] = "Lösche Zonen Auswahl"
L["Color of the tracking circle."] = "Farbe der Anzeigekreise."
L["Control various aspects of node icons on both the World Map and Minimap."] = "Symbol Einstellungen auf der Weltkarte und der Minikarte."
L["Conversion_Desc"] = "Vorhanden GatherMate Daten in GatherMate2 Format umwandeln."
L["Convert Databses"] = "Datenbank umwandeln"
L["Database locking"] = "Datenbank sperren"
L["Database Locking"] = "Datenbank sperren"
L["DATABASE_LOCKING_DESC"] = "'Datenbank sperren' erlaubt Dir einen Datenbankstand einzufrieren. Wenn eine Datenbank gesperrt ist, ist es nicht mehr möglich Daten hinzuzufügen, zu löschen oder diese zu ändern. Dies gilt auch für aufräumen und importieren."
L["Database Maintenance"] = "Datenbankwartung"
L["Databases to Import"] = "Datenbanken zum Importieren"
L["Databases you wish to import"] = "Datenbanken, die importiert werden sollen."
L["Delete"] = "Löschen"
L["Delete Entire Database"] = "Komplette Datenbank löschen"
L["DELETE_ENTIRE_DESC"] = "Dies ignoriert 'Datenbank sperren' und löscht alle Knoten von allen Zonen der ausgewählten Datenbank."
L["Delete selected node from selected zone"] = "Löscht ausgewählte Knoten von der ausgewählten Zone"
L["DELETE_SPECIFIC_DESC"] = "Alle ausgewählten Knoten von der ausgewählten Zone entfernen. Du mußt 'Datenbank sperren' deaktivieren damit dies funktioniert."
L["Delete Specific Nodes"] = "Spezielle Knoten löschen"
L["Display Settings"] = "Anzeige Einstellungen"
L["Engineering"] = "Ingenieurskunst"
L["Expansion"] = "Erweiterung"
L["Expansion Data Only"] = "Nur Erweiterungsdaten"
L["Failed to load GatherMateData due to "] = "Fehler beim Laden von GatherMateData aufgrund von "
L["FAQ"] = "FAQ"
L["FAQ_TEXT"] = [=[|cffffd200
Ich habe gerade GatherMate installiert, sehe aber keine Knoten auf meiner Karte. Was mache ich falsch?
|r
GatherMate kommt standardmäßig ohne Daten. Wenn Du Kräuter, Erze, Gase oder Fische sammelst fügt GatherMate diese umgehend der Karte hinzu und aktualisiert die Karte. Überprüfe auch Deine 'Anzeige Einstellungen'.

|cffffd200
Ich sehe Knoten auf der Weltkarte, aber nicht auf der Minikarte! Was mache ich falsch?
|r
|cffffff78Minimap Button Bag|r (und möglicherweise ähnliche Addons) löscht gerne alle Buttons. Deaktiviere solche Addons.

|cffffd200
Wie oder woher kann ich bereits vorhandene Daten bekommen?
|r
Du kannst vorhandene Daten auf folgende Arten importieren:

1. |cffffff78GatherMate_Data|r - Dieses LoD (wird beim Benutzen in den Speicher geladen) Addon enthält eine von WoWHead gesaugte Kopie aller Knoten die wöchentlich aktualisiert wird. Dafür gibt es automatische Aktualisierungsoptionen.

2. |cffffff78GatherMate_CartImport|r - Dieses Addon erlaubt Dir den Import vorhandener Datenbanken aus |cffffff78Cartographer_<Profession>|r Modulen in GatherMate. Damit dies funktioniert müssen die |cffffff78Cartographer_<Profession>|r Module und GatherMate_CartImport geladen und aktiviert sein.

Beachte, daß das Importieren von Daten in GatherMate kein automatisierter Prozess ist. Du mußt in 'Daten importieren' den Button 'Importieren' klicken. 

Dies unterscheidet sich von |cffffff78Cartographer_Data|r dahingehend, daß dem Benutzer die Wahl gegeben wird zu entscheiden wie und wann er seine Daten ändern will. |cffffff78Cartographer_Data|r überschreibt einfach Deine vorhandene Datenbank ohne Warnung und zerstört alle von Dir neu gefundenen Knoten.

|cffffd200
Könnt ihr Standorte für Postfächer, Flugmeister und dergleichen unterstützen?
|r
Die Antwort ist nein. Andere Addon Autoren können Addons oder Module für diese Zwecke machen. Das Basis GatherMate Addon wird dies nicht beinhalten.

|cffffd200
Ich hab einen Fehler gefunden! Wo kann ich das melden?
|r
Du kannst Fehler oder Vorschläge hier melden: |cffffff78http://forums.wowace.com/showthread.php?t=10367|r

Alternativ kannst Du uns hier finden: |cffffff78irc://irc.freenode.org/wowace|r

Wenn Du einen Fehler meldest, gib bitte folgendes an: |cffffff78Hinweise (am besten Schritt für Schritt)|r mit der man den Fehler reproduzieren kann, eine |cffffff78Fehlermeldung|r (z.B. von BugGrabber/BugSack), die |cffffff78Revisionsnummer|r von GatherMate die das Problem verursacht hat und ob Du den |cffffff78englischen Client oder einem anderen (z.B.: deDE)|r benutzt.

|cffffd200
Wer hat dieses coole Addon geschrieben?
|r
Kagaro, Xinhuan, Nevcairiel und Ammo
]=]
L["Filter_Desc"] = "Ausgewählte Knotentypen werden auf der Weltkarte und auf der Minikarte angezeigt. Nicht ausgewählte werden trotzdem in der Datenbank gespeichert."
L["Filters"] = "Filter"
L["Fishes"] = "Fische"
L["Fish filter"] = "Fisch Filter"
L["Fishing"] = "Angeln"
L["Frequently Asked Questions"] = "Häufig gestellte Fragen (FAQ)"
L["Gas Clouds"] = "Gas Wolken"
L["Gas filter"] = "Gas Filter"
L["GatherMate2Data has been imported."] = "GatherMate2Data wurden importiert."
L["GatherMate Conversion"] = "GatherMate Konvertierung"
L["GatherMate data has been imported."] = "GatherMate Daten wurden importiert."
L["GatherMateData has been imported."] = "GatherMateData wurde importiert."
L["GatherMate Pin Options"] = "GatherMate Pin Optionen"
L["General"] = "Allgemein"
L["Herbalism"] = "Kräuterkunde"
L["Herb Bushes"] = "Pflanzen"
L["Herb filter"] = "Pflanzen Filter"
L["Icon Alpha"] = "Symboltransparenz"
L["Icon alpha value, this lets you change the transparency of the icons. Only applies on World Map."] = "Tranzparenz der Symbole verändern. Nur Weltkarte."
L["Icons"] = "Symbole"
L["Icon Scale"] = "Symbolgröße"
L["Icon scaling, this lets you enlarge or shrink your icons on both the World Map and Minimap."] = "Größe der Symbole auf der Weltkarte und der Minikarte verändern."
L["Import Data"] = "Daten importieren"
L["Import GatherMate2Data"] = "Importiere GatherMate2Data"
L["Import GatherMateData"] = "Importieren"
L["Importing_Desc"] = "Die Importfunktion ermöglicht, daß GatherMate auch Daten von anderen Quellen anzeigt und nicht nur die selbst entdeckten Stellen. Nach einem Import sollte unter Umständen die Datenbank aufgeräumt werden."
L["Import Options"] = "Import Optionen"
L["Import Style"] = "Importierungsart"
L["Keybind to toggle Minimap Icons"] = "Tastaturbelegung für das ein-/ausschalten der Minikarten-Symbole"
L["Load GatherMate2Data and import the data to your database."] = "Lade GatherMate2Data und importiere die Daten in deine Datenbank."
L["Load GatherMateData and import the data to your database."] = "GatherMateData laden und in Deine Datenbank importieren."
L["Merge"] = "Zusammenführen"
L["Merge will add GatherMate2Data to your database. Overwrite will replace your database with the data in GatherMate2Data"] = "'Zusammenführen' wird Daten von GatherMate2Data zu Deiner Datenbank hinzufügen. 'Überschreiben' wird Deine Datenbank mit Daten von GatherMate2Data überschreiben."
L["Merge will add GatherMateData to your database. Overwrite will replace your database with the data in GatherMateData"] = "'Zusammenführen' wird Daten von GatherMateData zu Deiner Datenbank hinzufügen. 'Überschreiben' wird Deine Datenbank mit Daten von GatherMateData überschreiben."
L["Mine filter"] = "Minen Filter"
L["Mineral Veins"] = "Erzvorkommen"
L["Minimap Icon Tooltips"] = "Minikarten-Symbol Tooltips"
L["Mining"] = "Bergbau"
L["Never show"] = "Niemals anzeigen"
L["Only import selected expansion data from WoWDB"] = "Nur WoWDB Daten von einer ausgewählten Erweiterung importieren"
L["Only import selected expansion data from WoWhead"] = "Nur WoWhead Daten von einer ausgewählten Erweiterung importieren"
L["Only while tracking"] = "Nur wenn gesucht wird"
L["Only with digsite"] = "Nur mit Grabungsort"
L["Only with profession"] = "Nur mit Beruf"
L["Overwrite"] = "Überschreiben"
L["Processing "] = "In Bearbeitung: "
L["Select All"] = "Alle auswählen"
L["Select all databases"] = "Wähle alle Datensätze"
L["Select all nodes"] = "Alle Knoten auswählen"
L["Select all zones"] = "Wähle alle Zonen aus"
L["Select Database"] = "Datenbank auswählen"
L["Select Databases"] = "Wähle Datensatz (Datenbank)"
L["Selected databases are shown on both the World Map and Minimap."] = "Gewählte Datenbanken werden auf der Weltkarte und auf der Minikarte angezeigt."
L["Select Node"] = "Knoten auswählen"
L["Select None"] = "Nichts auswählen"
L["Select the archaeology nodes you wish to display."] = "Wähle die Archäologie Knoten aus, die angezeigt werden solllen."
L["Select the fish nodes you wish to display."] = "Wähle die Fische aus, die angezeigt werden solllen."
L["Select the gas clouds you wish to display."] = "Wähle die Gaswolken aus, die angezeigt werden sollen."
L["Select the herb nodes you wish to display."] = "Wähle die Pflanzen aus, die angezeigt werden sollen."
L["Select the mining nodes you wish to display."] = "Wähle die Minen aus, die angezeigt werden sollen."
L["Select the treasure you wish to display."] = "Wähle die Schätze aus, die angezeigt werden sollen."
L["Select Zone"] = "Zone auswählen"
L["Select Zones"] = "Wähle eine Zone aus"
L["Show Archaeology Nodes"] = "Archäologie Knoten anzeigen"
L["Show Databases"] = "Datenbanken anzeigen"
L["Show Fishing Nodes"] = "Angel Knoten anzeigen"
L["Show Gas Clouds"] = "Gas Wolken anzeigen"
L["Show Herbalism Nodes"] = "Kräuterkunde Knoten anzeigen"
L["Show Minimap Icons"] = "Minikarten-Symbole"
L["Show Mining Nodes"] = "Bergbau Knoten anzeigen"
L["Show Nodes on Minimap Border"] = "Zeige Knotenpunkte am Rand der Minikarte"
L["Shows more Nodes that are currently out of range on the minimap's border."] = "Zeigt Knotenpunkte die momentan außer Reichweite sind am Rand der Minikarte."
L["Show Tracking Circle"] = "Anzeigekreis anzeigen"
L["Show Treasure Nodes"] = "Schatz Knoten anzeigen"
L["Show World Map Icons"] = "Weltkarten-Symbole"
L["The Burning Crusades"] = "The Burning Crusades"
L["The distance in yards to a node before it turns into a tracking circle"] = "Die Entfernung (in Meter) zu einem Knoten, bevor dieser zu einem Kreis wird"
L["The Frozen Sea"] = "Die gefrorene See"
L["The North Sea"] = "Das nördliche Meer"
L["Toggle showing archaeology nodes."] = "Anzeige der Archäologie Knoten ein-/ausschalten."
L["Toggle showing fishing nodes."] = "Anzeige der Angel Knoten ein-/ausschalten."
L["Toggle showing gas clouds."] = "Anzeige der Gas Wolken ein-/ausschalten."
L["Toggle showing herbalism nodes."] = "Anzeige der Kräuterkunde Knoten ein-/ausschalten."
L["Toggle showing Minimap icons."] = "Anzeige der Symbole auf der Minikarte ein-/ausschalten."
L["Toggle showing Minimap icon tooltips."] = "Anzeige der Symbol Tooltips auf der Minikarte ein-/ausschalten."
L["Toggle showing mining nodes."] = "Anzeige der Bergbau Knoten ein-/ausschalten."
L["Toggle showing the tracking circle."] = "Anzeige der Anzeigekreise ein-/ausschalten."
L["Toggle showing treasure nodes."] = "Anzeige der Schatz Knoten ein-/ausschalten."
L["Toggle showing World Map icons."] = "Anzeige der Symbole auf der Weltkarte ein-/aussschalten."
L["Tracking Circle Color"] = "Anzeigekreis Farbe"
L["Tracking Distance"] = "Anzeigeentfernung"
L["Treasure"] = "Schatz"
L["Treasure filter"] = "Schatz Filter"
L["Wrath of the Lich King"] = "Wrath of the Lich King"


local NL = LibStub("AceLocale-3.0"):NewLocale("GatherMate2Nodes", "deDE")
if not NL then return end

NL["Abundant Bloodsail Wreckage"] = "Blutsegelwrackteile"
NL["Abundant Firefin Snapper School"] = "Ein ergiebiger Schwarm Feuerflossenschnapper"
NL["Abundant Oily Blackmouth School"] = "Ergiebiger Schwarm öliger Schwarzmaulfische"
NL["Adamantite Bound Chest"] = "Adamantitbeschlagene Truhe"
NL["Adamantite Deposit"] = "Adamantitvorkommen"
NL["Adder's Tongue"] = "Schlangenzunge"
NL["Albino Cavefish School"] = "Ein Schwarm Albinohölhenfische"
NL["Algaefin Rockfish School"] = "Ein Schwarm Algenflossenbarsche"
NL["Ancient Lichen"] = "Urflechte"
NL["Arcane Vortex"] = "Arkanvortex"
NL["Arctic Cloud"] = "Arktische Wolke"
NL["Arthas' Tears"] = "Arthas’ Tränen"
NL["Azshara's Veil"] = "Azsharas Schleier"
NL["Battered Chest"] = "Ramponierte Truhe"
NL["Battered Footlocker"] = "Ramponierte Schließkiste"
NL["Blackbelly Mudfish School"] = "Ein Schwarm Schwarzbauchmatschflosser"
NL["Black Lotus"] = "Schwarzer Lotus"
NL["Blindweed"] = "Blindkraut"
NL["Blood of Heroes"] = "Blut von Helden"
NL["Bloodpetal Sprout"] = "Blutblütensprösslinge"
NL["Bloodsail Wreckage"] = "Blutsegelwrackteile"
NL["Bloodthistle"] = "Blutdistel"
NL["Bloodvine"] = "Blutrebe"
NL["Bluefish School"] = "Blauflossenschwarm"
NL["Borean Man O' War School"] = "Ein Schwarm boreanischer Galeeren"
NL["Bound Adamantite Chest"] = "Adamantitbeschlagene Truhe"
NL["Bound Fel Iron Chest"] = "Beschlagene Teufelseisentruhe"
NL["Brackish Mixed School"] = "Brackwasserschwarm"
NL["Briarthorn"] = "Wilddornrose"
NL["Brightly Colored Egg"] = "Bunt gefärbtes Ei"
NL["Bruiseweed"] = "Beulengras"
NL["Buccaneer's Strongbox"] = "Geldkassette des Bukaniers"
NL["Burial Chest"] = "Grabtruhe"
NL["Cinderbloom"] = "Aschenblüte"
NL["Cinder Cloud"] = "Aschewolke"
NL["Cobalt Deposit"] = "Kobaltvorkommen"
NL["Copper Vein"] = "Kupferader"
NL["Dark Iron Deposit"] = "Dunkeleisenablagerung"
NL["Dark Iron Treasure Chest"] = "Schatzkiste der Dunkeleisenzwerge"
NL["Deep Sea Monsterbelly School"] = "Ein Schwarm Tiefseemonsterbäuche"
-- NL["Deepsea Sagefish School"] = "Deepsea Sagefish School"
NL["Dented Footlocker"] = "Verbeulte Schließkiste"
NL["Draenei Archaeology Find"] = "Archäologischer draeneiischer Fund"
NL["Dragonfin Angelfish School"] = "Engelsdrachenfischschwarm"
NL["Dragon's Teeth"] = "Zähne des Drachen "
NL["Dreamfoil"] = "Traumblatt"
NL["Dreaming Glory"] = "Traumwinde"
NL["Dwarf Archaeology Find"] = "Archäologischer zwergischer Fund"
NL["Earthroot"] = "Erdwurzel"
NL["Elementium Vein"] = "Elementiumader"
NL["Everfrost Chip"] = "Immerfrostsplitter"
NL["Fadeleaf"] = "Blassblatt"
NL["Fangtooth Herring School"] = "Ein Schwarm Fangzahnheringe"
NL["Fathom Eel Swarm"] = "Klafteraalschwarm"
NL["Fel Iron Chest"] = "Teufelseisentruhe"
NL["Fel Iron Deposit"] = "Teufelseisenvorkommen"
NL["Felmist"] = "Teufelsnebel"
NL["Felsteel Chest"] = "Teufelsstahltruhe"
NL["Feltail School"] = "Teufelsfinnenschwarm"
NL["Felweed"] = "Teufelsgras"
NL["Firebloom"] = "Feuerblüte"
NL["Firefin Snapper School"] = "Feuerflossenschnapperschwarm"
NL["Firethorn"] = "Feuerdorn"
NL["Flame Cap"] = "Flammenkappe"
NL["Floating Debris"] = "Schwimmende Trümmer"
NL["Floating Wreckage"] = "Treibende Wrackteile"
NL["Floating Wreckage Pool"] = "Floating Wreckage Pool"
NL["Fossil Archaeology Find"] = "Archäologischer fossiler Fund"
NL["Frost Lotus"] = "Frostlotus"
NL["Frozen Herb"] = "Gefrorenes Kraut"
NL["Ghost Mushroom"] = "Geisterpilz"
NL["Giant Clam"] = "Riesenmuschel"
NL["Glacial Salmon School"] = "Ein Schwarm Winterlachse"
NL["Glassfin Minnow School"] = "Ein Schwarm Glasflossenelritzen"
NL["Glowcap"] = "Glühkappe"
NL["Goldclover"] = "Goldklee"
NL["Golden Sansam"] = "Goldener Sansam"
NL["Goldthorn"] = "Golddorn"
NL["Gold Vein"] = "Goldader"
NL["Grave Moss"] = "Grabmoos"
NL["Greater Sagefish School"] = "Großer Schwarm Weisenfische"
NL["Gromsblood"] = "Gromsblut"
NL["Heartblossom"] = "Herzblüte"
NL["Heavy Fel Iron Chest"] = "Schwere Teufelseisentruhe"
NL["Highland Guppy School"] = "Ein Schwarm Hochlandguppys"
NL["Highland Mixed School"] = "Mischschwarm des Hochlands"
NL["Huge Obsidian Slab"] = "Sehr große Obsidian-Platte "
NL["Icecap"] = "Eiskappe"
NL["Icethorn"] = "Eisdorn"
NL["Imperial Manta Ray School"] = "Ein Schwarm imperialer Mantarochen"
NL["Incendicite Mineral Vein"] = "Pyrophormineralvorkommen"
NL["Indurium Mineral Vein"] = "Induriummineralvorkommen"
NL["Iron Deposit"] = "Eisenvorkommen"
NL["Khadgar's Whisker"] = "Khadgars Schnurrbart"
NL["Khorium Vein"] = "Khoriumader"
NL["Kingsblood"] = "Königsblut"
NL["Large Battered Chest"] = "Große ramponierte Truhe"
NL["Large Darkwood Chest"] = "Große Dunkelholztruhe"
NL["Large Iron Bound Chest"] = "Große eisenbeschlagene Truhe"
NL["Large Mithril Bound Chest"] = "Große mithrilbeschlagene Truhe"
NL["Large Obsidian Chunk"] = "Großer Obsidiumvorkommen"
NL["Large Solid Chest"] = "Große robuste Truhe"
NL["Lesser Bloodstone Deposit"] = "Geringe Blutsteinablagerung"
NL["Lesser Firefin Snapper School"] = "Kleiner Feuerflossenschnapperschwarm"
NL["Lesser Floating Debris"] = "Lesser Floating Debris"
NL["Lesser Oily Blackmouth School"] = "Kleiner Schwarm öliger Schwarzmaulfische"
NL["Lesser Sagefish School"] = "Kleiner Weisenfischschwarm"
NL["Lichbloom"] = "Lichblüte"
NL["Liferoot"] = "Lebenswurz"
NL["Mageroyal"] = "Maguskönigskraut"
NL["Mana Thistle"] = "Manadistel"
NL["Maplewood Treasure Chest"] = "Schatzkiste aus Ahornholz"
NL["Mithril Deposit"] = "Mithrilvorkommen"
NL["Moonglow Cuttlefish School"] = "Ein Schwarm Mondlichtsepia"
NL["Mossy Footlocker"] = "Moosbedeckte Schließkiste"
NL["Mountain Silversage"] = "Bergsilbersalbei"
NL["Mountain Trout School"] = "Ein Schwarm Bergforellen"
NL["Muddy Churning Water"] = "Schlammiges aufgewühltes Wasser"
NL["Mudfish School"] = "Matschflosserschwarm"
NL["Musselback Sculpin School"] = "Muschelrückengropperschwarm"
NL["Mysterious Camel Figurine"] = "Mysteriöse Kamelfigur"
NL["Nerubian Archaeology Find"] = "Archäologischer nerubischer Fund"
NL["Netherbloom"] = "Netherblüte"
NL["Nethercite Deposit"] = "Netheritablagerung"
NL["Netherdust Bush"] = "Netherstaubbusch"
NL["Netherwing Egg"] = "Ei der Netherschwingen"
NL["Nettlefish School"] = "Ein Schwarm Nesselfische"
NL["Night Elf Archaeology Find"] = "Archäologischer nachtelfischer Fund"
NL["Nightmare Vine"] = "Alptraumranke"
NL["Obsidian Chunk"] = "Obsidiumvorkommen"
NL["Obsidium Deposit"] = "Obsidiumvorkommen"
NL["Oil Spill"] = "Ölfleck"
NL["Oily Blackmouth School"] = "Schwarm öliger Schwarzmaulfische"
NL["Ooze Covered Gold Vein"] = "Schlammbedecktes Goldvorkommen"
NL["Ooze Covered Mithril Deposit"] = "Schlammbedeckte Mithrilablagerung"
NL["Ooze Covered Rich Thorium Vein"] = "Schlammbedecktes reiches Thoriumvorkommen"
NL["Ooze Covered Silver Vein"] = "Schlammbedecktes Silbervorkommen"
NL["Ooze Covered Thorium Vein"] = "Schlammbedeckte Thoriumader"
NL["Ooze Covered Truesilver Deposit"] = "Schlammbedecktes Echtsilbervorkommen"
NL["Orc Archaeology Find"] = "Archäologischer orcischer Fund"
NL["Other Archaeology Find"] = "sonstiger archäologische Fund"
NL["Patch of Elemental Water"] = "Stelle mit Elementarwasser"
NL["Peacebloom"] = "Friedensblume"
NL["Plaguebloom"] = "Pestblüte"
NL["Pool of Fire"] = "Feuerteich"
NL["Practice Lockbox"] = "Übungsschließkassette"
NL["Primitive Chest"] = "Primitive Truhe"
NL["Pure Saronite Deposit"] = "Reine Saronitablagerung"
NL["Pure Water"] = "Reines Wasser"
NL["Purple Lotus"] = "Lila Lotus"
NL["Pyrite Deposit"] = "Pyritvorkommen"
NL["Ragveil"] = "Zottelkappe"
NL["Rich Adamantite Deposit"] = "Reiches Adamantitvorkommen"
NL["Rich Cobalt Deposit"] = "Reiches Kobaltvorkommen"
NL["Rich Elementium Vein"] = "Reiche Elementiumader"
NL["Rich Obsidium Deposit"] = "Reiches Obsidiumvorkommen"
NL["Rich Pyrite Deposit"] = "Reiches Pyritvorkommen"
NL["Rich Saronite Deposit"] = "Reiches Saronitvorkommen"
NL["Rich Thorium Vein"] = "Reiche Thoriumader"
NL["Runestone Treasure Chest"] = "Schatzkiste aus Runensteinen"
NL["Sagefish School"] = "Weisenfischschwarm"
NL["Saronite Deposit"] = "Saronitvorkommen"
NL["Scarlet Footlocker"] = "Scharlachrote Schließkiste"
NL["School of Darter"] = "Stachelflosserschwarm"
NL["School of Deviate Fish"] = "Deviatfischschwarm"
NL["School of Tastyfish"] = "Leckerfischschwarm"
NL["Schooner Wreckage"] = "Schiffswrackteile"
NL["Shipwreck Debris"] = "Schiffswracktrümmer"
NL["Silken Treasure Chest"] = "Seidene Schatzkiste"
NL["Silverbound Treasure Chest"] = "Silberbeschlagene Schatzkiste"
NL["Silverleaf"] = "Silberblatt"
NL["Silver Vein"] = "Silberader"
NL["'Small Obsidian Chunk"] = "'Kleiner Obsidiumvorkommen"
NL["Small Obsidian Chunk"] = "Kleiner Obsidiumvorkommen"
NL["Small Thorium Vein"] = "Kleine Thoriumader"
NL["Solid Chest"] = "Robuste Truhe"
NL["Solid Fel Iron Chest"] = "Robuste Teufelseisentruhe"
NL["Sorrowmoss"] = "Trauermoos"
NL["Sparse Firefin Snapper School"] = "Spärlicher Feuerflossenschnapperschwarm"
NL["Sparse Oily Blackmouth School"] = "Spärlicher Schwarm öliger Schwarzmaulfische"
NL["Sparse Schooner Wreckage"] = "Sparse Schooner Wreckage"
NL["Sporefish School"] = "Sporenfischschwarm"
NL["Steam Cloud"] = "Dampfwolke"
NL["Steam Pump Flotsam"] = "Treibgut der Dampfpumpe"
NL["Stonescale Eel Swarm"] = "Steinschuppenaalschwarm"
NL["Stormvine"] = "Sturmwinde"
NL["Strange Pool"] = "Strange Pool"
NL["Stranglekelp"] = "Würgetang"
NL["Sturdy Treasure Chest"] = "Stabile Schatzkiste"
NL["Sungrass"] = "Sonnengras"
NL["Swamp Gas"] = "Sumpfgas"
NL["Talandra's Rose"] = "Talandras Rose"
NL["Tattered Chest"] = "Ramponierte Truhe"
NL["Teeming Firefin Snapper School"] = "Wimmelnder Feuerflossenschnapperschwarm"
NL["Teeming Floating Wreckage"] = "Teeming Floating Wreckage"
NL["Teeming Oily Blackmouth School"] = "Wimmelnder Schwarm öliger Schwarzmaulfische"
NL["Terocone"] = "Terozapfen"
NL["Tiger Lily"] = "Tigerlilie"
NL["Tin Vein"] = "Zinnader"
NL["Titanium Vein"] = "Titanader"
NL["Tol'vir Archaeology Find"] = "Archäologischer Fund der Tol'vir"
NL["Troll Archaeology Find"] = "Archäologischer trollischer Fund"
NL["Truesilver Deposit"] = "Echtsilbervorkommen"
NL["Twilight Jasmine"] = "Schattenjasmin"
NL["Un'Goro Dirt Pile"] = "Erdhaufen von Un'Goro"
NL["Vrykul Archaeology Find"] = "Archäologischer Fund der Vrykul"
NL["Waterlogged Footlocker"] = "Durchnässte Schließkiste"
NL["Waterlogged Wreckage"] = "Treibholzwrackteile"
NL["Whiptail"] = "Gertenrohr"
NL["Wicker Chest"] = "Weidentruhe"
NL["Wild Steelbloom"] = "Wildstahlblume"
NL["Windy Cloud"] = "Windige Wolke"
NL["Wintersbite"] = "Winterbiss"

