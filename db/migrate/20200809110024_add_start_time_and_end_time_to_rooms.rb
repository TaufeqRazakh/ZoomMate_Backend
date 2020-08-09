class AddStartTimeAndEndTimeToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :start_time, :datetime
    add_column :rooms, :end_time, :datetime
  end
end
