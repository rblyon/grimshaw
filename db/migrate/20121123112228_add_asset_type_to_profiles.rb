class AddAssetTypeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :asset_type, :string
  end
end
