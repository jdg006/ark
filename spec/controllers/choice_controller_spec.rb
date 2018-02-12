require 'rails_helper'

RSpec.describe ChoiceController, type: :controller do
    
    let (:my_loadout) {Loadout.create(user_id: 1)}
    let (:my_item) {Item.create(name: "test name", category: "test category", stack_size: 1, item_id: 1, class_name: "test class", blueprint_path: "test path")}
    let (:my_choice) {Choice.create(item_id: my_item.id, quantity: 1, quality: 1, loadout_id: my_loadout.id)}
  
    describe "POST new" do
        it "redirects to the home_index_url" do
            post :new, item_id: 1, choice: {quantity: 1, quality: 1}
            expect(response).to redirect_to(home_index_url)
        end
        
        it "increases the number of choices by 1" do 
            expect{ post :new, item_id: 1, choice: {quantity: 1, quality: 1} }.to change(Choice,:count).by(1)
        end
    end
    
    describe "DELETE delete" do
       it "deletes the choice" do
         id = my_choice.id
         delete :delete, format: id
         count = Choice.where({id: id}).count
         expect(count).to eq 0
       end
       
       it "redirects to home_index_url" do
         delete :delete, format: my_choice.id
         expect(response).to redirect_to(home_index_url)
       end
   end
end
