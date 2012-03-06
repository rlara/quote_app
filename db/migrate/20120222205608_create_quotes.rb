class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :description
      t.decimal :costperhour

      t.timestamps
    end
  end
end
