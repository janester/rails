# == Schema Information
#
# Table name: planets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Planet < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :satellites
end
