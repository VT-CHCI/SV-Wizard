class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :conference, index: true
      t.string :name
      t.text :description
      t.references :location, index: true
      t.integer :day
      t.time :start_time
      t.time :end_time
      t.integer :slots
      t.float :hours
      t.integer :priority
      t.boolean :invisible

      t.timestamps
    end
  end
end
