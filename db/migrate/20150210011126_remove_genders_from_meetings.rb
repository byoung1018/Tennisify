class RemoveGendersFromMeetings < ActiveRecord::Migration
  def change
    remove_column :meetings, :genders
  end
end
