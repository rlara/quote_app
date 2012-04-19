class AddColumnTotal < ActiveRecord::Migration
  change_table :cases do |t|
    t.integer :total_hours
  end
end
