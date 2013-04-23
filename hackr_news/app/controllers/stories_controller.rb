

class StoriesController < ApplicationController
  def index
  end

  def scrape
    Story.delete_all
    Story.scrape(params[:num_pages].to_i)
    @stories = Story.all
  end
end
