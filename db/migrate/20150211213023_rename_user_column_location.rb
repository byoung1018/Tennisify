class RenameUserColumnLocation < ActiveRecord::Migration
  def change
    rename_column :users, :location, :area
  end
end
