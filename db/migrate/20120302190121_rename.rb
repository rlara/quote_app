class Rename < ActiveRecord::Migration
  def change
    rename_column :cases, :type, :tipe
  end

 
end
