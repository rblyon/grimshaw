class AddAudioModeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :audio_mode, :string
  end
end
