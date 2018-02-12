require 'rails_helper'

RSpec.describe Choice, type: :model do
    
    Choice.delete_all
    
    let (:my_loadout) {Loadout.create(user_id: 1)}
    let (:my_item) {Item.create(name: "test name", category: "test category", stack_size: 1, item_id: 1, class_name: "test class", blueprint_path: "test path")}
    let (:my_choice) {Choice.create(item_id: my_item.id, quantity: 1, quality: 1, loadout_id: my_loadout.id)}
    
    describe "attributes" do
        it "has item_id, quantity, quality and loadout_id attributes" do
            expect(my_choice).to have_attributes(item_id: my_item.id, quantity: 1, quality: 1, loadout_id: my_loadout.id)
        end
    end
    
    describe "relations" do 
        it "belongs to a loadout" do 
            expect(my_loadout.choices).to eq([my_choice])
        end
    end
    
end
