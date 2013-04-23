# == Schema Information
#
# Table name: satellites
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  distance   :float
#  diameter   :float
#  period     :float
#  planet_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Satellite < ActiveRecord::Base
  attr_accessible :name, :image, :distance, :diameter, :period, :planet_id
  belongs_to :planet
end
