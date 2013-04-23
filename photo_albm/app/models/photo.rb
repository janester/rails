# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  file       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#

class Photo < ActiveRecord::Base
  attr_accessible :name, :file, :remote_file_url
  belongs_to :album
  mount_uploader :file, PicUploader
end
