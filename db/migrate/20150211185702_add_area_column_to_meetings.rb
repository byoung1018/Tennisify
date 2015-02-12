class AddAreaColumnToMeetings < ActiveRecord::Migration
  def change
    rename_column :meetings, :location, :area
    add_column :meetings, :location, :string, null: false
  end
end
