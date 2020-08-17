class AddIcalToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :i_cal, :text
    
    remove_column :rooms, :url, :string
    remove_column :rooms, :capacity, :integer
    remove_column :rooms, :purpose, :string
    remove_column :rooms, :occupants, :integer
    remove_column :rooms, :start_time, :datetime
    remove_column :rooms, :end_time, :datetime
  end
end
