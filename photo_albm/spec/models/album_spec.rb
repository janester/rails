# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "spec_helper"

describe Album do
  describe ".create" do
    it "creates an album" do
      FactoryGirl.create(:album)
      album = Album.first
      album.should be_an_instance_of(Album)
      expect(album.name).to eq "nyc"
    end
  end

  describe "#photos" do
    it "has many photos" do
      album = Album.create
      expect(album.photos).to eq []
      photo = FactoryGirl.create(:photo)
      album.photos << photo
      expect(album.photos).to eq [photo]
    end
  end
end
