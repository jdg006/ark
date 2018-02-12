require 'rails_helper'

RSpec.describe Loadout, type: :model do
  let(:loadout) {Loadout.create(user_id: 1)}
  
  describe "attributes" do
        it "has user_id" do
            expect(loadout).to have_attributes(user_id: 1)
        end
    end
  
end
