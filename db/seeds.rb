# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Item.create(name: "", category: "", stack_size: , item_id: , class_name: "", blueprint_path: "")
Item.create(name: "Cloth Shirt", category: "Armor", stack_size: 1, item_id: 18, class_name: "PrimalItemArmor_ClothShirt_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Armor/Cloth/PrimalItemArmor_ClothShirt.PrimalItemArmor_ClothShirt'")
Item.create(name: "Cloth Hat", category: "Armor", stack_size: 1, item_id: 19, class_name: "PrimalItemArmor_ClothHelmet_C", blueprint_path: "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Armor/Cloth/PrimalItemArmor_ClothHelmet.PrimalItemArmor_ClothHelmet'")

#Choice.create(item_id: , quantity: , quality: , loadout_id: )
Choice.create(item_id: 1, quantity: 1, quality: 100, loadout_id: 1)
Choice.create(item_id: 2, quantity: 1, quality: 100, loadout_id: 1)
Choice.create(item_id: 3, quantity: 1, quality: 100, loadout_id: 1)

Loadout.create(user_id: 1)

User.create(name: "Joe", email: "a@a.com", password: "wordofpass", access_level: 3)