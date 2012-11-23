class AddMapPidToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :map_pid, :string
  end
end
