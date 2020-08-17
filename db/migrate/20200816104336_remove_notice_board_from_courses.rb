class RemoveNoticeBoardFromCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :notice_board, :text
    add_column :rooms, :notice_board, :text
  end
end
