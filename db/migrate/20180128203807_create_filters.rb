class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :name
      t.boolean :active

      t.timestamps null: false
    end
  end
end
