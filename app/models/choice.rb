class Choice < ApplicationRecord
    has_one :item
    belongs_to :loadout
end
