require "spec_helper"

describe "Photos" do
  describe "GET /albums/id" do
    it "displays the Photo form", :js => true do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      click_link("Add Photo")
      page.should have_button("Create Photo")
    end
  end

  describe "JS clear form" do
    it "clears the photo form", :js => true do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      click_link("Add Photo")
      click_link("Cancel")
      page.should_not have_button("Create Photo")
    end
  end
end
