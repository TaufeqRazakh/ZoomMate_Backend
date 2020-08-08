class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :url
      t.integer :capacity
      t.integer :occupants
      t.string :type

      t.timestamps
    end
  end
end
