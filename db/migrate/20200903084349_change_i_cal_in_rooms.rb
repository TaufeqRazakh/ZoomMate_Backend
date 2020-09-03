class ChangeICalInRooms < ActiveRecord::Migration[6.0]
  def up
    change_column :rooms, :i_cal, :json, using: 'i_cal::json'
  end
  
  def down
    change_column :rooms, :i_cal, :text
  end
end
