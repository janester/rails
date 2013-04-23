# == Schema Information
#
# Table name: exercises
#
#  id           :integer          not null, primary key
#  activity     :string(255)
#  amount       :integer
#  unit         :string(255)
#  completed_on :date
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Exercise < ActiveRecord::Base
  attr_accessible :activity, :amount, :unit, :completed_on
  belongs_to :user

end
