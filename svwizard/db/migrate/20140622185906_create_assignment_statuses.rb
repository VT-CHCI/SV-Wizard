class CreateAssignmentStatuses < ActiveRecord::Migration
  def change
    create_table :assignment_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
