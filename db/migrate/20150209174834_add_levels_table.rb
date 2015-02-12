class AddLevelsTable < ActiveRecord::Migration
  def change
    remove_column :meetings, :level
    remove_column :meetings, :age_groups
    create_table :levels_allowed do |t|
      t.integer :meeting_id, null: false
      t.integer :level_id, null: false
      t.timestamps null: false
    end
    add_index :meetings, :organizer_id
    add_index :levels_allowed, :meeting_id
    add_index :levels_allowed, :level_id

    create_table :levels do |t|
      t.string :level, null: false
    end

    create_table :age_groups_allowed do |t|
      t.integer :meeting_id, null: false
      t.integer :age_group_id, null: false
      t.timestamps null: false
    end
    add_index :age_groups_allowed, :meeting_id
    add_index :age_groups_allowed, :age_group_id
    
    create_table :age_groups do |t|
      t.string :age_group, null: false
    end

  end
end
