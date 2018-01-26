class AddConsoleStringToLoadout < ActiveRecord::Migration
  def change
    add_column :loadouts, :console_string, :string
  end
end
