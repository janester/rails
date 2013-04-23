# == Schema Information
#
# Table name: ascii_url_holders
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ascii_url_holder < ActiveRecord::Base
  attr_accessible :url

  before_save :nuke_data
  after_create :get_codes

  def nuke_data
    Code.delete_all
    Ascii_url_holder.delete_all
  end

  def get_codes
    html = HTTParty.get("#{self.url}")
    doc = Nokogiri::HTML("#{html}")
    x = doc.css("table")[1].children[4].children[0].children[6]
    x.shift
    x.children.length.times do |i|
      h = x.children[i].children[2].text
      s = x.children[i].children[4].text
      Code.create(hex:h, sym:s)
    end
  end
end
