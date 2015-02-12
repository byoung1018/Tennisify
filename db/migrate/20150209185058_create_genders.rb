class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :gender, null: false
      t.timestamps null: false
    end
  end
end
