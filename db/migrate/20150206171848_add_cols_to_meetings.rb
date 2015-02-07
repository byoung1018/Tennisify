class AddColsToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :max_players, :integer, null: false
    add_column :meetings, :public, :boolean, null: false
    add_column :meetings, :location, :string, null: false
    add_column :meetings, :level, :string, null: false
    add_column :meetings, :age_groups, :integer, null: false
    add_column :meetings, :genders, :string, null: false
  end
end
