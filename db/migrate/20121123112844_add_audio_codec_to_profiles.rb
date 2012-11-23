class AddAudioCodecToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :audio_codec, :string
  end
end
