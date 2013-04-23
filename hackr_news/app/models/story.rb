# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'open-uri'

class Story < ActiveRecord::Base
  attr_accessible :name, :url

  def Story.scrape(num_pages)
    #scrape the page initially
    doc = Nokogiri::HTML(open('https://news.ycombinator.com/'))
    if num_pages == 1 || num_pages == 0 #if the user didn't enter anything or entered one page, do the normal scrape
      stories = doc.css(".title a")
      stories[0..-2].each do |story|
        value = story.attributes["href"].value
        name = story.children[0].text
        Story.create(name:name, url:value)
      end
    else #otherwise, do the scrape the number of times the user entered
      num_pages.times do |x|
        stories = doc.css(".title a")
        stories[0..-2].each do |story|
          value = story.attributes["href"].value
          name = story.children[0].text
          Story.create(name:name, url:value)
        end
        more = stories[-1].attributes["href"].value
        if more.starts_with?("/")
          more = more[1..-1]
        end
        more = "https://news.ycombinator.com/#{more}"
        html = HTTParty.get(more)
        doc = Nokogiri::HTML("#{html}")
      end
    end
  end
end
