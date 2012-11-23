class RemoveFullnameFromProfiles < ActiveRecord::Migration
  def up
    remove_column :profiles, :fullname
  end

  def down
    add_column :profiles, :fullname, :string
  end
end
