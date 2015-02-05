class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :respondent_id, null: false
      t.integer :meeting_id, null: false
      t.string :response_status, null: false
      t.timestamps null: false
    end

    add_index :responses, :meeting_id
    add_index :responses, :respondent_id
  end
end
