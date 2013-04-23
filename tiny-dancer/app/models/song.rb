# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  track      :integer
#  filename   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#

class Song < ActiveRecord::Base
  attr_accessible :name, :track, :filename, :album_id
  belongs_to :album
end
