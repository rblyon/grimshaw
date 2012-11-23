class RemoveContainerFromProfiles < ActiveRecord::Migration
  def up
    remove_column :profiles, :container
  end

  def down
    add_column :profiles, :container, :string
  end
end
