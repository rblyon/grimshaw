class AddVideoModeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :video_mode, :string
  end
end
