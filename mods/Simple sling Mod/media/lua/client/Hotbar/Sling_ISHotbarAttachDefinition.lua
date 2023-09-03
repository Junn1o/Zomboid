if not ISHotbarAttachDefinition then return end

local ChestRig = {
	type = "ChestRig",
	name = "Chest Rig Left",
	animset = "belt left",
	attachments = {
		Mag = "Chest Rig Mag Left",
		Holster = "Chest Rig",
		Knife = "Chest Rig Knife",
		Nightstick = "Nightstick Left",
		BigBlade = "Blade On Back",
		Shotgun ="Shotgun On Back",
		Gear = "Chest Rig Gear",
		ChestLight = "Chest Light",
		Walkie = "Chest Rig Walkie",
		Bottle = "Chest Rig Bottle",
		Screwdriver  = "Chest Rig Walkie",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRig);

local ChestRigRight = {
	type = "ChestRigRight",
	name = "Chest Rig Right",
	animset = "belt right",
	attachments = {	
		Mag = "Chest Rig Mag Right",
		ChestLight = "Chest Light Right",
		Knife = "Belt Left Upside", 
		BigBlade = "Blade On Back",
		Walkie = "Chest Rig Walkie Right",
		Bottle = "Chest Rig Bottle Right",
		Flashlight = "Belt Left",
		Screwdriver  = "Chest Rig Walkie Right",
		Gear = "Chest Rig Gear Right",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigRight);

local KnifeSheath = {
	type = "KnifeSheath",
	name = "Knife Sheath",
	animset = "belt right",
	attachments = {
		Knife = "Claf in Sheath (Leg)",
		Screwdriver  = "Knife Sheath",
		BigBlade = "Claf in Sheath (Leg)"
	},
}
table.insert(ISHotbarAttachDefinition, KnifeSheath);

local KnifeSheathBack = {
	type = "KnifeSheathBack",
	name = "KnifeSheathBack",
	animset = "belt right",
	attachments = {
		Knife = "Claf in Sheath (Back)",
		Screwdriver  = "Knife Sheath",
		BigBlade = "Claf in Sheath (Back)"
	},
}
table.insert(ISHotbarAttachDefinition, KnifeSheathBack);

local KatanaSheath = {
	type = "KatanaSheath",
	name = "KatanaSheath",
	animset = "back",
	attachments = {
		BigBlade = "Katana in Sheath",
	},
}
table.insert(ISHotbarAttachDefinition, KatanaSheath);

local Back2 = {
	type = "Back2",
	name = "HunkVest",
	animset = "back",
	attachments = {
		Rifle = "SlingRifle",
		BigBlade = "SlingWeapon",
		BigBonk = "SlingWeapon",
		BigWeapon = "SlingWeapon",
		Shovel = "SlingShovel",
		Guitar = "Guitar",
		GuitarAcoustic = "Guitar Acoustic",
		Pan = "Pan On Back";
		Rifle = "Rifle On Back",
		Saucepan = "Saucepan Back",
		Shotgun ="Shotgun On Back",
	},
}
table.insert(ISHotbarAttachDefinition, Back2);

local Back3 = {
	type = "Back3",
	name = "HunkVest",
	animset = "back",
	attachments = {
		BigBlade = "SlingWeapon",
		Shotgun ="Shotgun On Back",
	},
}
table.insert(ISHotbarAttachDefinition, Back3);

local slot = {
	type = "Sling",
	name = "Sling",
	animset = "belt left",
	attachments = {
		Rifle = "SlingRifle",
		BigBlade = "SlingWeapon",
		BigBonk = "SlingWeapon",
		BigWeapon = "SlingWeapon",
		Shovel = "SlingShovel",
	},
}
table.insert(ISHotbarAttachDefinition, slot);

slot = {
	type = "SlingAlt",
	name = "Sling2",
	animset = "belt left",
	attachments = {
		Rifle = "SlingRifle2",
		BigBlade = "SlingWeapon2",
		BigBonk = "SlingWeapon2",
		BigWeapon = "SlingWeapon2",
		Shovel = "SlingShovel2",
	},
}
table.insert(ISHotbarAttachDefinition, slot);

slot = {
	type = "SlingAlt2",
	name = "Sling3",
	animset = "belt left",
	attachments = {
		Rifle = "SlingRifle3",
		BigBlade = "SlingWeapon3",
		BigBonk = "SlingWeapon3",
		BigWeapon = "SlingWeapon3",
		Shovel = "SlingShovel3",
	},
}
table.insert(ISHotbarAttachDefinition, slot);

slot = {
	type = "SlingAlt3",
	name = "Sling4",
	animset = "back",
	attachments = {
		Rifle = "SlingRifle Back",
		Shovel = "SlingShovel Back",
		BigBlade = "SlingWeapon Back",
		BigBonk = "SlingWeapon Back",
		BigWeapon = "SlingWeapon Back",
	},
}
table.insert(ISHotbarAttachDefinition, slot);

local replacements = {
	RifleSling = "SlingRifleBag",
	ShovelSling = "SlingShovelBag",
	BigWeaponSling = "SlingWeaponBag",
	BigBladeSling = "SlingBladeBag",
	BigBonkSling = "SlingBladeBag",
}
for k,v in pairs(replacements) do 
	ISHotbarAttachDefinition.replacements[1].replacement[k]=v
end

require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end
local MOD_DATA = {

    Back = {        
		BigBonk = "Blade On Back",
    },
	
    BackReplacement = {
        BigBonk = "Big Blade On Back with Bag",
    },
}
for _,t in pairs(ISHotbarAttachDefinition) do
    if t.type and MOD_DATA[t.type] then
        for k,v in pairs(MOD_DATA[t.type]) do
            if v == 0 and t.replacement then
                t.replacement[k] = nil
            elseif t.attachments then
                t.attachments[k] = v ~= 0 and v or nil
            else
                print('ERROR: Unknown mod data option.')
            end
        end
    end
end