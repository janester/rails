# == Schema Information
#
# Table name: priorities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ranking    :integer          default(1)
#

class Priority < ActiveRecord::Base
  attr_accessible :name, :color, :user_id, :ranking
  belongs_to :user
  has_many :tasks

  def swap_higher(user)
    p = user.priorities.order(:ranking)
    index = p.index {|i| i.id == self.id}
    if (index+1) != nil
      over = p[index+1]
      temp = self.ranking
      self.ranking = over.ranking
      over.ranking = temp
      self.save
      over.save
      [self, over]
    else
      [self]
    end
  end

  def swap_lower(user)
    p = user.priorities.order(:ranking)
    index = p.index {|i| i.id == self.id}
    if (index-1) != nil
      over = p[index-1]
      temp = self.ranking
      self.ranking = over.ranking
      over.ranking = temp
      self.save
      over.save
      [self, over]
    else
      [self]
    end

  end
end
