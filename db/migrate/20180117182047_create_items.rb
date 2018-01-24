class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id
      t.string :name
      t.string :category
      t.integer :stack_size
      t.integer :item_id
      t.string :class_name
      t.string :blueprint_path
      

      t.timestamps null: false
    end
  end
end
