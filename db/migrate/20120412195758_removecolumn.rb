class Removecolumn < ActiveRecord::Migration
  def change
    remove_column :cases, :tipe
    add_column :cases, :tipe, :string
  end


end
