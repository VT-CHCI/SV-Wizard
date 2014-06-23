class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :short_name
      t.integer :year
      t.string :email
      t.integer :volunteers
      t.integer :volunteer_hours
      t.date :start_date
      t.date :end_date
      t.integer :bid_day
      t.integer :status
      t.boolean :maintenance

      t.timestamps
    end
  end
end
