Options = {}
Options.isSpeech = false
Options.enableHealNotify = false

injuredParts = {}
player = nil
bodyParts = nil

local function OnCreatePlayer()
	player = getPlayer()
	bodyParts = player:getBodyDamage():getBodyParts()
end

local function TableContains (tab, val)
	for index, value in ipairs(tab) do
		if value == val then return true end
	end
	return false
end

--Using this instead of the built-in table.remove().
--Because read this (https://stackoverflow.com/a/53038524)
function ArrayRemove(t, fnKeep)
	local j, n = 1, #t;
	for i=1,n do
		if (fnKeep(t, i, j)) then
			if (i ~= j) then
				t[j] = t[i];
				t[i] = nil;
			end
			j = j + 1;
		else
			t[i] = nil;
		end
	end
	return t;
end

local function TranslateBodyPart(partString)
	return getText("UI_InjuryIndicator_" .. partString)
end

local function TranslateNotifySpeech()
	local index = ZombRand(5)
	return getText("UI_InjuryIndicator_HurtSpeech" .. index)
end

local function NotifySpeech(string)
	player:Say(getText(TranslateNotifySpeech() .. "! - " .. TranslateBodyPart(string)))
end

local function Notify(string, isGood)
	if not Options.isSpeech then
		local r, g, b
		if isGood then
			r = 100
			g = 255
			b = 100
		else
			r = 255
			g = 100
			b = 100
		end
		HaloTextHelper.addTextWithArrow(player, TranslateBodyPart(string), isGood, r, g, b)
	else
		if not isGood then NotifySpeech(string) end
	end
end

local function OnPlayerUpdate()
	--Loop through all body parts, put them in injuredParts list and pop a notification.
	--Need that list because we use it's contents as a check to prevent message spam.
	for i=1, bodyParts:size() do
		local bodyPart = bodyParts:get(i-1)
		local queryPart = BodyPartType.ToString(bodyPart:getType())
		if bodyPart:HasInjury() then
			if not TableContains(injuredParts, bodyPart) then
				table.insert(injuredParts, bodyPart)
				Notify(queryPart, false)
			end
		else
			if TableContains(injuredParts, bodyPart) then
				ArrayRemove(injuredParts, function(t, i, j)
					-- Return true(==) to keep the value, or false(~=) to discard it.
					local v = t[i];
					return (v ~= bodyPart);
				end)
				if Options.enableHealNotify then Notify(queryPart, true) end
			end
		end
	end
end

Events.OnCreatePlayer.Add(OnCreatePlayer)
Events.OnPlayerUpdate.Add(OnPlayerUpdate)