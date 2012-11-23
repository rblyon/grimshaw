class AddVideoBitrateToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :video_bitrate, :integer
  end
end
