class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title, null: false
      t.integer :organizer_id, null: false
      t.text :about
      t.date :date, null: false
      t.time :time, null: false
      t.timestamps null: false
    end
  end
end
