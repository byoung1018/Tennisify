class AddPhoneVerifiedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone_status, :string, :default => "unverified"
  end
end
