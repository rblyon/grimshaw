class AddFramerateToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :framerate, :string
  end
end
