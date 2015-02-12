class RenameTableLevelsAllowed < ActiveRecord::Migration
  def change
    rename_table :levels_allowed, :allowed_levels
    rename_table :age_groups_allowed, :allowed_age_groups

  end
end
