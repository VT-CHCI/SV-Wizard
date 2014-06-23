class CreateEnrollmentStatuses < ActiveRecord::Migration
  def change
    create_table :enrollment_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
