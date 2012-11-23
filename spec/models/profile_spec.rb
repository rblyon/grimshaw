# == Schema Information
#
# Table name: profiles
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  bitrate            :integer
#  codec              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  map_pid            :string(255)
#  map_revision       :integer
#  description        :text
#  format             :string(255)
#  framerate          :string(255)
#  height             :string(255)
#  asset_type         :string(255)
#  mime_type          :string(255)
#  video_bitrate      :integer
#  video_mode         :string(255)
#  width              :string(255)
#  audio_bitrate      :integer
#  audio_codec        :string(255)
#  audio_mode         :string(255)
#  map_link           :string(255)
#  video_bitrate_mode :string(255)
#

require 'spec_helper'

describe Profile do
  pending "add some examples to (or delete) #{__FILE__}"
end
