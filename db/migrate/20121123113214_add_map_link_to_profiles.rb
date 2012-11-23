class AddMapLinkToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :map_link, :string
  end
end
