class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :item_id
      t.integer :quantity
      t.integer :quality
      t.integer :loadout_id

      t.timestamps null: false
    end
  end
end
