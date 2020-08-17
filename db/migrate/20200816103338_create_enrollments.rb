class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.references :students
      t.references :courses
    end

    create_table :registers do |t|
      t.references :instructors
      t.references :courses
    end
  end
end
