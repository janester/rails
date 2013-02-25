require 'open-uri'

class PinterestController < ApplicationController
  def show
    if params[:query].present?
      doc = Nokogiri::HTML(open("http://pinterest.com/search/pins/?q=#{params[:query]}"))
    else
      doc = Nokogiri::HTML(open('http://pinterest.com'))
    end
    images = doc.css('img')
    @urls = images.map {|i| i.get_attribute('src')}.select {|u| u.exclude?('avatar')}
    @urls.shift
    @urls.pop

  end

end
