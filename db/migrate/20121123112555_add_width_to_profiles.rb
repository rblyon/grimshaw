class AddWidthToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :width, :string
  end
end
