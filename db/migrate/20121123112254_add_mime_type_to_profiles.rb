class AddMimeTypeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :mime_type, :string
  end
end
