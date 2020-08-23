class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.references :student
      t.references :course
    end

    create_table :registers do |t|
      t.references :instructor
      t.references :course
    end
  end
end
