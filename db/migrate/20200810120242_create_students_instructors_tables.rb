class CreateStudentsInstructorsTables < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.belongs_to :user
    end

    create_table :students do |t|
      t.belongs_to :user
    end
  end
end
