class AddAvailableToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :available, :boolean
  end
end
