class AddBlueprintToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :blueprint, :boolean
  end
end
