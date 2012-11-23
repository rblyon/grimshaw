class AddMapRevisionToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :map_revision, :integer
  end
end
