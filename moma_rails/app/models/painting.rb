# == Schema Information
#
# Table name: paintings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :integer
#  medium     :string(255)
#  style      :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Painting < ActiveRecord::Base
  attr_accessible :title, :year, :medium, :style, :image, :artist_id
  belongs_to :artist
end
