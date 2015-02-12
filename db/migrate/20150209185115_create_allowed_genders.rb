class CreateAllowedGenders < ActiveRecord::Migration
  def change
    create_table :allowed_genders do |t|
      t.integer :meeting_id, null: false
      t.integer :gender_id, null: false
      t.timestamps null: false
    end
    add_index :allowed_genders, :meeting_id
    add_index :allowed_genders, :gender_id
  end
end
