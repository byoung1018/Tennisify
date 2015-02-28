class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :user_id, null: false
      t.integer :meeting_id, null: false
      t.timestamps null: false
    end
    add_index :invites, :user_id
    add_index :invites, :meeting_id
  end
end
