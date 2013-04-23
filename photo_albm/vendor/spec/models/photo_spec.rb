# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  file       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#

require "spec_helper"

describe Photo do
  describe ".create" do
    it "creates a photo" do
      Photo.create(name:'NYC', file:"nyc.jpg")
      photo = Photo.first
      photo.should be_an_instance_of(Photo)
      expect(photo.name).to eq "NYC"
      expect(photo.file).to eq "nyc.jpg"
    end
  end

  describe "#album" do
    it "has an album" do
      photo = Photo.create
      album = FactoryGirl.create(:album)
      photo.album = album
      photo.save
      expect(photo.album_id).to eq album.id
    end
  end
end
