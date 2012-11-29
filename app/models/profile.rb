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

class Profile < ActiveRecord::Base
  attr_accessible :name, :bitrate, :codec, :map_pid, :map_revision, :description, :format, :framerate, :height, :asset_type, :mime_type, :video_bitrate, :video_mode, :width, :audio_bitrate, :audio_codec, :audio_mode, :map_link, :video_bitrate_mode

  def self.search(search)
    
    if search
      qry_a = []
      search.select{|k,v| v!='' && !(%w(utf8 commit controller action bitratelow bitratehigh asset_type).include?(k))}.each_pair do |key,value|
       
   
       
        qry_a << "#{key} like '%#{value}%'"       
       
       
      end  
      
      if (search[:bitratelow] && search[:bitratelow]!='') || (search[:bitratehigh] && search[:bitratehigh]!='')
        qry_a <<"bitrate between #{search[:bitratelow]!='' ? search[:bitratelow]: 0} and #{search[:bitratehigh]!='' ? search[:bitratehigh]: 1000000000}"
      end  
      
      
      if (search[:asset_type]) 
        qry_a <<"asset_type = '#{search[:asset_type]}'"
      end  
        
      
      qry = qry_a.join(' and ')
      Rails.logger.info qry
      find(:all, :conditions => qry, :order => "name ASC") 
    else
      find(:all, :order => "name ASC")
    end
  end





end
