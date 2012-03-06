class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.string :description
      t.boolean :type
      t.integer :code
      t.integer :design
      t.boolean :base
      t.references :quote

      t.timestamps
    end
    add_index :cases, :quote_id
  end
end
