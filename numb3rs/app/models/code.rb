# == Schema Information
#
# Table name: codes
#
#  id         :integer          not null, primary key
#  hex        :string(255)
#  sym        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Code < ActiveRecord::Base
  attr_accessible :hex, :sym

  def Code.word2hex(word)
    a = word.split("")
    a = a.map {|x| Code.where(:sym => x).first.hex.downcase}
    a.join
  end
end
