# == Schema Information
#
# Table name: oceans
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  image        :text
#  area         :float
#  percent_surf :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ocean < ActiveRecord::Base
  attr_accessible :name, :image, :area, :percent_surf
end
