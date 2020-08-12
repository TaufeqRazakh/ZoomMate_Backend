class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
    end
  end
end
