# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first      :string(255)
#  last       :string(255)
#  dob        :date
#  email      :string(255)
#  phone      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
  attr_accessible :first, :last, :dob, :email, :phone
end
