local proceduralPlaces = {
    PoliceStorageOutfit = 1.6,
    PoliceLockers = 1.6,
    ArmyStorageOutfit = 5,
    LockerArmyBedroom = 5,

    FirearmWeapons = 1.6,
    PawnShopGunsSpecial = 1.6,
    ArmySurplusOutfit = 5,

    GunStoreShelf = 1.6,
    CampingStoreGear = 1.6,
    CampingStoreBackpacks = 1.6,
    WardrobeRedneck = 1.6,
}

local suburbsPlaces = {
    ["SurvivorCache1.SurvivorCrate"] = 0.5 ,
    ["SurvivorCache2.SurvivorCrate"] = 0.5,
    Bag_WeaponBag = 0.5,
    Bag_SurvivorBag = 0.5,
}

local vehiclePlaces = {
    ["Police.TruckBed"] = 0.5,
    SurvivalistTruckBed = 0.5,
    HunterTruckBed = 0.5,
}

local function hasDot(s)
    local dot = string.find(s,".",1,true)
    local v1,v2
    if dot then
        v1 = string.sub(s,1,dot-1)
        v2 = string.sub(s,dot+1,-1)
    end
    return dot,v1,v2
end

for k,v in pairs(proceduralPlaces) do 
    table.insert(ProceduralDistributions.list[k].items, "Base.SlingA");
    table.insert(ProceduralDistributions.list[k].items, v);
end

for k,v in pairs(suburbsPlaces) do 
    local found,k1,k2 = hasDot(k)
    if found then 
        table.insert(SuburbsDistributions[k1][k2].items, "Base.SlingA");
        table.insert(SuburbsDistributions[k1][k2].items, v);
    else
        table.insert(SuburbsDistributions[k].items, "Base.SlingA");
        table.insert(SuburbsDistributions[k].items, v);
    end
end

for k,v in pairs(vehiclePlaces) do 
    local found,k1,k2 = hasDot(k)
    if found then 
        table.insert(VehicleDistributions[k1][k2].items, "Base.SlingA");
        table.insert(VehicleDistributions[k1][k2].items, v);
    else
        table.insert(VehicleDistributions[k].items, "Base.SlingA");
        table.insert(VehicleDistributions[k].items, v);
    end
    
end

require "Items/Distributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

if ProceduralDistributions.list.DrugLabGuns then 
	table.insert(ProceduralDistributions.list.DrugLabGuns.items, "Webbing")
	table.insert(ProceduralDistributions.list.DrugLabGuns.items, 1)	
	table.insert(ProceduralDistributions.list.DrugLabGuns.items, "ChestRig")
	table.insert(ProceduralDistributions.list.DrugLabGuns.items, 1)
end

table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, "Webbing")
table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, 1)	
table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, "ChestRig")
table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, 1)

table.insert(ProceduralDistributions.list.ArmyStorageOutfit.items, "Webbing_Military")
table.insert(ProceduralDistributions.list.ArmyStorageOutfit.items, 0.6)	

table.insert(ProceduralDistributions.list.FirearmWeapons.items, "ChestRig")
table.insert(ProceduralDistributions.list.FirearmWeapons.items, 1)	
table.insert(ProceduralDistributions.list.FirearmWeapons.items, "Webbing")
table.insert(ProceduralDistributions.list.FirearmWeapons.items, 1)

table.insert(ProceduralDistributions.list.GarageFirearms.items, "ChestRig")
table.insert(ProceduralDistributions.list.GarageFirearms.items, 0.2)	
table.insert(ProceduralDistributions.list.GarageFirearms.items, "Webbing")
table.insert(ProceduralDistributions.list.GarageFirearms.items, 0.6)

table.insert(ProceduralDistributions.list.GunStoreShelf.items, "Webbing")
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 0.2)	
table.insert(ProceduralDistributions.list.GunStoreShelf.items, "ChestRig")
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 0.6)

table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, "Webbing_Military")
table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, 0.6)

table.insert(ProceduralDistributions.list.PawnShopGunsSpecial.items, "ChestRig")
table.insert(ProceduralDistributions.list.PawnShopGunsSpecial.items, 1)
table.insert(ProceduralDistributions.list.PawnShopGunsSpecial.items, "Webbing")
table.insert(ProceduralDistributions.list.PawnShopGunsSpecial.items, 1)

table.insert(ProceduralDistributions.list.PlankStashGun.items, "ChestRig")
table.insert(ProceduralDistributions.list.PlankStashGun.items, 1)
table.insert(ProceduralDistributions.list.PlankStashGun.items, "Webbing")
table.insert(ProceduralDistributions.list.PlankStashGun.items, 1)

table.insert(ProceduralDistributions.list.PoliceStorageOutfit.items, "Webbing_Black")
table.insert(ProceduralDistributions.list.PoliceStorageOutfit.items, 0.6)

table.insert(ProceduralDistributions.list.WardrobeRedneck.items, "ChestRig")
table.insert(ProceduralDistributions.list.WardrobeRedneck.items, 0.2)
table.insert(ProceduralDistributions.list.WardrobeRedneck.items, "Webbing")
table.insert(ProceduralDistributions.list.WardrobeRedneck.items, 0.2)


table.insert(SuburbsDistributions.Bag_WeaponBag.items, "ChestRig")
table.insert(SuburbsDistributions.Bag_WeaponBag.items, 0.2)
table.insert(SuburbsDistributions.Bag_WeaponBag.items, "Webbing")
table.insert(SuburbsDistributions.Bag_WeaponBag.items, 0.2)

table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "ChestRig")
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 0.2)
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "Webbing")
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 0.2)

table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, "ChestRig")
table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, 0.2)
table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, "Webbing")
table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, 0.6)

table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, "ChestRig")
table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, 0.2)
table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, "Webbing")
table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, 0.6)	


table.insert(VehicleDistributions.Police.TruckBed.items, "Webbing_Military")
table.insert(VehicleDistributions.Police.TruckBed.items, 0.6)

table.insert(VehicleDistributions.SurvivalistTruckBed.items, "ChestRig")
table.insert(VehicleDistributions.SurvivalistTruckBed.items, 0.6)		
table.insert(VehicleDistributions.SurvivalistTruckBed.items, "Webbing")
table.insert(VehicleDistributions.SurvivalistTruckBed.items, 0.6)

require "Items/Distributions"
require "Items/ItemPicker"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"


	-- table.insert(SuburbsDistributions.gunstore.locker.items, "CalfSheath")
	-- table.insert(SuburbsDistributions.gunstore.locker.items, 0.2)

	-- table.insert(SuburbsDistributions.gunstore.locker.items, "CalfSheath(black)")
	-- table.insert(SuburbsDistributions.gunstore.locker.items, 0.2)
	
	-- table.insert(SuburbsDistributions.gunstore.metal_shelves.items, "CalfSheath")
	-- table.insert(SuburbsDistributions.gunstore.metal_shelves.items, 0.2)

	-- table.insert(SuburbsDistributions.gunstore.metal_shelves.items, "CalfSheath(black)")
	-- table.insert(SuburbsDistributions.gunstore.metal_shelves.items, 0.2)
	
	-- table.insert(SuburbsDistributions.gunstorestorage.all.items, "CalfSheath")
	-- table.insert(SuburbsDistributions.gunstorestorage.all.items, 0.2)	

	-- table.insert(SuburbsDistributions.gunstorestorage.all.items, "CalfSheath(black)")
	-- table.insert(SuburbsDistributions.gunstorestorage.all.items, 0.2)	
	
	table.insert(ProceduralDistributions.list.GunStoreShelf.items, "CalfSheath")
	table.insert(ProceduralDistributions.list.GunStoreShelf.items, 0.2)

	table.insert(ProceduralDistributions.list.GunStoreShelf.items, "CalfSheath(black)")
	table.insert(ProceduralDistributions.list.GunStoreShelf.items, 0.2)
	
	table.insert(SuburbsDistributions.Bag_WeaponBag.items, "CalfSheath")
	table.insert(SuburbsDistributions.Bag_WeaponBag.items, 0.2)

	table.insert(SuburbsDistributions.Bag_WeaponBag.items, "CalfSheath(black)")
	table.insert(SuburbsDistributions.Bag_WeaponBag.items, 0.2)
	
	table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "CalfSheath")
	table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 0.2)

	table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "CalfSheath(black)")
	table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 0.2)
	
	table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, "CalfSheath")
	table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, 0.2)

	table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, "CalfSheath(black)")
	table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, 0.2)
	
	table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, "CalfSheath")
	table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, 0.2)

	table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, "CalfSheath(black)")
	table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, 0.2)
	

	table.insert(ProceduralDistributions.list.MeleeWeapons.items, "CalfSheath")
	table.insert(ProceduralDistributions.list.MeleeWeapons.items, 1)

	table.insert(ProceduralDistributions.list.MeleeWeapons.items, "CalfSheath(black)")
	table.insert(ProceduralDistributions.list.MeleeWeapons.items, 1)
	
	-- table.insert(SuburbsDistributions.Bag_WeaponBag.items, "CalfSheath")
	-- table.insert(SuburbsDistributions.Bag_WeaponBag.items, 1)

	-- table.insert(SuburbsDistributions.Bag_WeaponBag.items, "CalfSheath(black)")
	-- table.insert(SuburbsDistributions.Bag_WeaponBag.items, 1)
	
	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, "CalfSheath")
	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, 1)

	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, "CalfSheath(black)")
	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, 1)
	
	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, "CalfSheath")
	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, 1)	

	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, "CalfSheath(black)")
	-- table.insert(SuburbsDistributions.armysurplus.shelves.items, 1)	
	
	-- if ProceduralDistributions.list.ArmySurplusTools then		
		table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, "CalfSheath")
		table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, 1)	
		table.insert(ProceduralDistributions.list.ArmySurplusTools.items, "CalfSheath")
		table.insert(ProceduralDistributions.list.ArmySurplusTools.items, 1)	
		table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, "CalfSheath(black)")
		table.insert(ProceduralDistributions.list.ArmySurplusMisc.items, 1)	
		table.insert(ProceduralDistributions.list.ArmySurplusTools.items, "CalfSheath（black）")
		table.insert(ProceduralDistributions.list.ArmySurplusTools.items, 1)	
	-- end	
		
	table.insert(VehicleDistributions.SurvivalistTruckBed.items, "CalfSheath")
	table.insert(VehicleDistributions.SurvivalistTruckBed.items, 0.8)

	table.insert(VehicleDistributions.SurvivalistTruckBed.items, "CalfSheath(black)")
	table.insert(VehicleDistributions.SurvivalistTruckBed.items, 0.8)
	
table.insert(ProceduralDistributions.list.WardrobeRedneck.items, "CalfSheath")
table.insert(ProceduralDistributions.list.WardrobeRedneck.items, 0.2)

table.insert(ProceduralDistributions.list.WardrobeRedneck.items, "CalfSheath(black)")
table.insert(ProceduralDistributions.list.WardrobeRedneck.items, 0.2)

table.insert(ProceduralDistributions.list.PawnShopKnives.items, "CalfSheath")
table.insert(ProceduralDistributions.list.PawnShopKnives.items, 0.8)

table.insert(ProceduralDistributions.list.PawnShopKnives.items, "CalfSheath(black)")
table.insert(ProceduralDistributions.list.PawnShopKnives.items, 0.8)