# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Joe", email: "a@a.com", password: "wordofpass", access_level: 3)
Loadout.create(user_id: 1)

#Item.create(name: "", category: "", stack_size: , item_id: , class_name: "", blueprint_path: "")
item_one = Item.create(name: "Cloth Shirt", category: "Armor", stack_size: 1, item_id: 18, class_name: "PrimalItemArmor_ClothShirt_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Armor/Cloth/PrimalItemArmor_ClothShirt.PrimalItemArmor_ClothShirt'")
item_two = Item.create(name: "Cloth Hat", category: "Armor", stack_size: 1, item_id: 19, class_name: "PrimalItemArmor_ClothHelmet_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Armor/Cloth/PrimalItemArmor_ClothHelmet.PrimalItemArmor_ClothHelmet'")
Item.create(name: "Wood", category: "Resources", stack_size: 100, item_id: 7, class_name: "PrimalItemResource_Wood_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Resources/PrimalItemResource_Wood.PrimalItemResource_Wood'")
Item.create(name: "Stone Pick", category: "Tools", stack_size: 1, item_id: 33, class_name: "PrimalItem_WeaponStonePick_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponStonePick.PrimalItem_WeaponStonePick'")
Item.create(name: "Parasaur Saddle", category: "Saddles", stack_size: 1, item_id: 100, class_name: "PrimalItemArmor_ParaSaddle_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_ParaSaddle.PrimalItemArmor_ParaSaddle'")
Item.create(name: "Campfire", category: "Structures", stack_size: 3, item_id: 39, class_name: "PrimalItemStructure_Campfire_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Campfire.PrimalItemStructure_Campfire'")
Item.create(name: "Blue Coloring", category: "Dye", stack_size: 100, item_id: 60, class_name: "PrimalItemDye_Blue_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/PrimalItemDye_Blue.PrimalItemDye_Blue'")
Item.create(name: "Raw Meat", category: "Consumables", stack_size: 20, item_id: 12, class_name: "PrimalItemConsumable_RawMeat_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_RawMeat.PrimalItemConsumable_RawMeat'")
Item.create(name: "Note", category: "Recipes", stack_size: 1, item_id: 98, class_name: "PrimalItem_Note_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Notes/PrimalItem_Note.PrimalItem_Note'")
Item.create(name: "Allosaurus Egg", category: "Eggs", stack_size: 100, item_id: nil, class_name: "PrimalItemConsumable_Egg_Allo_C", blueprint_path: "Blueprint'/Game/PrimalEarth/Test/PrimalItemConsumable_Egg_Allo.PrimalItemConsumable_Egg_Allo'")
Item.create(name: "Small Animal Feces", category: "Farming", stack_size: 1, item_id: 54, class_name: "PrimalItemConsumable_DinoPoopSmall_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_DinoPoopSmall.PrimalItemConsumable_DinoPoopSmall'")
Item.create(name: "Amarberry Seed", category: "Seeds", stack_size: 100, item_id: 116, class_name: "PrimalItemConsumable_Seed_Amarberry_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Consumables/Seeds/PrimalItemConsumable_Seed_Amarberry.PrimalItemConsumable_Seed_Amarberry'")
Item.create(name: "Bow", category: "Weapons and Attachments", stack_size: 1, item_id: 5, class_name: "PrimalItem_WeaponBow_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponBow.PrimalItem_WeaponBow'")
Item.create(name: "Stone Arrow", category: "Ammunition", stack_size: 50, item_id: 32, class_name: "PrimalItemAmmo_ArrowStone_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Weapons/PrimalItemAmmo_ArrowStone.PrimalItemAmmo_ArrowStone'")
Item.create(name: "Bronto Bone Costume", category: "Skins", stack_size: 1, item_id: nil, class_name: "PrimalItemCostume_BoneSauro_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneSauro.PrimalItemCostume_BoneSauro'")
Item.create(name: "Specimen Implant", category: "Artifacts", stack_size: 1, item_id: 134, class_name: "PrimalItem_StartingNote_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Notes/PrimalItem_StartingNote.PrimalItem_StartingNote'")
Item.create(name: "Alpha Rex Trophy", category: "Trophy", stack_size: 1, item_id: nil, class_name: "PrimalItemTrophy_AlphaRex_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Trophies/PrimalItemTrophy_AlphaRex.PrimalItemTrophy_AlphaRex'")

#Choice.create(item_id: , quantity: , quality: , loadout_id: )
Choice.create(item_id: item_one.id, quantity: 1, quality: 100, loadout_id: 1)
Choice.create(item_id: item_two.id, quantity: 1, quality: 100, loadout_id: 1)

#Filter.create(name: , active: )
Filter.delete_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '<filters>'") 
Filter.create(name: "All", active: false)
Filter.create(name: "Armor", active: false)
Filter.create(name: "Resources", active: false)
Filter.create(name: "Tools", active: false)
Filter.create(name: "Saddles", active: false)
Filter.create(name: "Structures", active: false)
Filter.create(name: "Dye", active: false)
Filter.create(name: "Consumables", active: false)
Filter.create(name: "Recipes", active: false)
Filter.create(name: "Eggs", active: false)
Filter.create(name: "Farming", active: false)
Filter.create(name: "Seeds", active: false)
Filter.create(name: "Weapons and Attachments", active: false)
Filter.create(name: "Ammunition", active: false)
Filter.create(name: "Skins", active: false)
Filter.create(name: "Artifacts", active: false)
Filter.create(name: "Trophy", active: false)

puts "seeded"
