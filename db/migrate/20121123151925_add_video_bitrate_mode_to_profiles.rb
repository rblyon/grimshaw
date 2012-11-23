class AddVideoBitrateModeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :video_bitrate_mode, :string
  end
end
