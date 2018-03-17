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
