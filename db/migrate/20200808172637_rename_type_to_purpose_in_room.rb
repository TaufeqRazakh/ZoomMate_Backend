class RenameTypeToPurposeInRoom < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :type, :purpose
  end
end
