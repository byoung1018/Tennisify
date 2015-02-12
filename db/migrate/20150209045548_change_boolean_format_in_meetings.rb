class ChangeBooleanFormatInMeetings < ActiveRecord::Migration
  def change
    change_column :meetings, :age_groups, :string
    change_column :meetings, :public, :string
    change_column :users, :reveal_age, :string
  end
end
