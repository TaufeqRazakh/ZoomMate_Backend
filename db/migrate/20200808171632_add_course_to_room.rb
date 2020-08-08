class AddCourseToRoom < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :course, null: false, foreign_key: true
  end
end
