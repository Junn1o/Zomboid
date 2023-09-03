local group = BodyLocations.getGroup("Human")

group:getOrCreateLocation("Sling")
group:getOrCreateLocation("Sling2")
group:getOrCreateLocation("Sling3")
group:getOrCreateLocation("Sling4")
group:getOrCreateLocation("HunkVest")

group:getOrCreateLocation("KnifeSheathBack")
group:getOrCreateLocation("KatanaSheath")
group:getOrCreateLocation("Back2")

group:getOrCreateLocation("ChestRig")
group:getOrCreateLocation("TorsoRig")

if InsertNewLocation then
	InsertNewLocation("Bandolier", "AmmoStrap", false)
	InsertNewLocation("TorsoRig", nil, false)
	InsertNewLocation("BackRig", "Back", false)
	InsertNewLocation("KnifeSheath", nil, false)
	
	HideModel["Billboard"] = {"Bandolier"}
	print("Did Soul Filchers Thing")
	
else
	local group = BodyLocations.getGroup("Human")
	group:getOrCreateLocation("TorsoRig")
	group:getOrCreateLocation("Bandolier")
	group:getOrCreateLocation("BackRig")
	group:getOrCreateLocation("KnifeSheath")
	group:getOrCreateLocation("KnifeSheathBack")

end