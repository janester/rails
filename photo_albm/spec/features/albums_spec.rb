require "spec_helper"

describe "Albums" do
  describe "GET /" do
    # it "should display albums" do
    #   visit root_path
    #   page.should have_text(album.name)
    #   page.should have_text(album.name.length)
    # end

    it "should have add album button" do
      visit root_path
      page.should have_link("Add Album")
    end

    it "should have album form", :js => true do
      visit root_path
      click_link("Add Album")
      page.should have_button("Create Album")
    end

    it "should cancel the form", :js => true do
      visit root_path
      click_link("Add Album")
      click_link("Cancel")
      page.should_not have_button("Create Album")
    end
  end

  describe "POST /albums" do
    it "should make an album and show it on page", :js => true do
      visit root_path
      click_link("Add Album")
      fill_in('Name', :with => 'NYC')
      #binding.pry -this one doesn't
      click_button("Create Album")
      #binding.pry -this one works
      expect(Album.first.name).to eq "NYC"
      page.should have_link(Album.first.name)
      visit root_path
      page.should have_link(Album.first.name)
    end
  end

  describe 'POST /albums' do
    it 'create an Album', :js => true do
      visit root_path

      click_link('Add Album')
      fill_in('Name', :with => 'Dogs')
      click_button('Create Album')

      click_link('Add Album')
      fill_in('Name', :with => 'Cats')
      click_button('Create Album')

      click_link('Add Album')
      fill_in('Name', :with => 'Horses')
      click_button('Create Album')

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Cats')
      page.should have_css('table tr:nth-child(2) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'Dogs')
      page.should have_css('table tr:nth-child(3) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Horses')
      page.should have_css('table tr:nth-child(4) td:nth-child(2)', :text => '0')

      visit root_path

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Cats')
      page.should have_css('table tr:nth-child(2) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'Dogs')
      page.should have_css('table tr:nth-child(3) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Horses')
      page.should have_css('table tr:nth-child(4) td:nth-child(2)', :text => '0')
    end
  end

  describe 'GET /albums/3' do
    it 'displays the album show page', :js => true do
      visit root_path
      click_link('Add Album')
      fill_in('Name', :with => 'Dogs')
      click_button('Create Album')
      click_link('Dogs')
      current_path.should eq '/albums/1'
    end
  end
end
