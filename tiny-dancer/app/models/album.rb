# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)      default("http://www.masonfamilymedicine.com/layout/images/NoPhotoDefault.png")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#

class Album < ActiveRecord::Base
  attr_accessible :name, :image, :artist_id
  belongs_to :artist
  has_many :songs
end
