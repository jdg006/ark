require 'rails_helper'

RSpec.describe Filter, type: :model do
  
  let(:filter) {Filter.create(name: "test", active: false)}

    describe "attributes" do
        it "has name and active attributes" do
            expect(filter).to have_attributes(name: "test", active: false)
        end
    end

  
  
end
