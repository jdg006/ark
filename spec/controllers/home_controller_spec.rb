require 'rails_helper'

RSpec.describe HomeController, type: :controller do
    let (:my_loadout) {Loadout.create(user_id: 1)}
    let (:my_item) {Item.create(name: "test name", category: "test category", stack_size: 1, item_id: 1, class_name: "test class", blueprint_path: "test path")}
    let (:my_choice) {Choice.create(item_id: my_item.id, quantity: 1, quality: 1, loadout_id: my_loadout.id)}
    
    describe "GET index" do
     it "renders the index template" do
      my_loadout.choices = [my_choice]
       get :index
       expect(response).to render_template("index")
     end
   end

end
