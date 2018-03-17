class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.integer :item_id
      t.integer :quantity
      t.integer :quality
      t.boolean :blueprint
      t.integer :loadout_id

      t.timestamps null: false
    end
  end
end
