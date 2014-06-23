class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :conference, index: true
      t.references :user, index: true
      t.references :enrollment_status, index: true
      t.integer :lottery
      t.string :comment

      t.timestamps
    end
  end
end
