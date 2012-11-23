class AddAudioBitrateToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :audio_bitrate, :integer
  end
end
