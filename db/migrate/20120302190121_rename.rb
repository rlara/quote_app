class Rename < ActiveRecord::Migration
  def up
    rename_column :cases, :type, :tipe
  end

  def down
  end
end
