class AddPhoneVerifiedToUsers < ActiveRecord::Migration
  def change
    change_column :users, :phone_status, :string, :default => "unverified"
  end
end
