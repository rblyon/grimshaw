class RemoveLevelFromProfiles < ActiveRecord::Migration
  def up
    remove_column :profiles, :level
  end

  def down
    add_column :profiles, :level, :string
  end
end
