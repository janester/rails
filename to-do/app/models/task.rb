# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  desc        :string(255)
#  duedate     :date
#  is_complete :boolean          default(FALSE)
#  user_id     :integer
#  priority_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  address     :text
#  lat         :float            default(0.0)
#  long        :float            default(0.0)
#

class Task < ActiveRecord::Base
  attr_accessible :title, :desc, :duedate, :is_complete, :user_id, :priority_id, :address, :lat, :long
  belongs_to :user
  belongs_to :priority

  before_save :geocode
  private
  def geocode
    result = Geocoder.search(self.address).first
    if result.present?
      self.lat = result.latitude
      self.long = result.longitude
    end
  end
end
