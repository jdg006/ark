require 'rails_helper'

RSpec.describe FilterController, type: :controller do
    
    let(:filter) {Filter.create(name: "test", active: false)}
    
    describe "edit" do
        it "redirects to home_index_url" do
            post :edit, format: filter.id
            expect(response).to redirect_to(home_index_url)
        end
    end
    
end

