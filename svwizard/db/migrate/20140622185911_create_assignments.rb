class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :user, index: true
      t.references :task, index: true
      t.float :hours
      t.string :comment

      t.timestamps
    end
  end
end
