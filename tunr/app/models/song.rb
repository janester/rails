# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  artist_id  :integer
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :decimal(, )      default(0.0)
#

class Song < ActiveRecord::Base
  attr_accessible :name, :image, :filename, :artist_id, :album_id, :genre_ids, :price, :mixtape_ids
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres
  # validates :name, :presence => true, :uniqueness => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0 }

end
