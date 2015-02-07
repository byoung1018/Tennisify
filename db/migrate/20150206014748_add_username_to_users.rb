class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :level, :string
    add_column :users, :location, :string
    add_column :users, :age, :integer
    add_column :users, :reveal_age, :boolean, null: false
    add_column :users, :gender, :string
    add_column :users, :picture, :string
  end
end
