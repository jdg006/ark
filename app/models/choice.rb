class Choice < ActiveRecord::Base
    has_one :item
    belongs_to :loadout
end
