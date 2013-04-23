# == Schema Information
#
# Table name: declarations
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  whole      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Declaration < ActiveRecord::Base
  attr_accessible :url, :whole

  before_create :get_text

  def get_text
    a = HTTParty.get("#{self.url}").to_s
    self.whole = a
  end

  def words
    self.whole.split(" ")
  end
end
