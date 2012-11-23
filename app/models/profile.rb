# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  fullname   :string(255)
#  bitrate    :integer
#  container  :string(255)
#  codec      :string(255)
#  level      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ActiveRecord::Base
  attr_accessible :bitrate, :codec, :container, :fullname, :level, :name

  def self.search(search)
    
    if search
      qry_a = []
      search.select{|k,v| v!='' && !(%w(utf8 commit controller action bitratelow bitratehigh).include?(k))}.each_pair do |key,value|
        qry_a << "#{key} like '%#{value}%'"
      end  
      if (search[:bitratelow] && search[:bitratelow]!='') || (search[:bitratehigh] && search[:bitratehigh]!='')
        qry_a <<"bitrate between #{search[:bitratelow]!='' ? search[:bitratelow]: 0} and #{search[:bitratehigh]!='' ? search[:bitratehigh]: 1000000000}"
      end  
      qry = qry_a.join(' and ')
      Rails.logger.info qry
      find(:all, :conditions => qry)   
    else
      find(:all)
    end
  end





end
