require "InjuryIndicator"

if ModOptions and ModOptions.getInstance then

	--Runs when an options value changes
	--No idea why we have to put that x in there. It can be any string.
	local function OnApply(x)

		Options.isSpeech = x.settings.options.isSpeech
		Options.enableHealNotify = x.settings.options.enableHealNotify

	end

	local SETTINGS = {
		options_data = {

			isSpeech = {
				name = "UI_InjuryIndicator_SpeechSwitch",
				tooltip = "UI_InjuryIndicator_SpeechSwitch_Tooltip",
				default = false,
				OnApplyMainMenu = OnApply,
				OnApplyInGame = OnApply,
			},

			enableHealNotify = {
				name = "UI_InjuryIndicator_EnableHealNotify",
				tooltip = "UI_InjuryIndicator_EnableHealNotify_Tooltip",
				default = false,
				OnApplyMainMenu = OnApply,
				OnApplyInGame = OnApply,
			},

		},
		mod_id = 'InjuryIndicator',
		mod_shortname = 'Injury Indicator',
		mod_fullname = 'Injury Indicator',
	}
	ModOptions:getInstance(SETTINGS)
	
	--This is probably unnecessary but just in case.
	ModOptions:loadFile()
	
	--So that we initialize variables. Not sure what the "settings = SETTINGS" do.
	Events.OnPreMapLoad.Add(function() OnApply({ settings = SETTINGS }) end)
end
