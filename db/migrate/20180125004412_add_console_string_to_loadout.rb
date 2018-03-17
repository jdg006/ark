class AddConsoleStringToLoadout < ActiveRecord::Migration[5.1]
  def change
    add_column :loadouts, :console_string, :string
  end
end
