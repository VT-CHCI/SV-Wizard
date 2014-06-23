class CreateConferenceStatuses < ActiveRecord::Migration
  def change
    create_table :conference_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
