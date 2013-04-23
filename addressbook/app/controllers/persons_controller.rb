class PersonsController < ApplicationController
  def index
    people = Person.all
    render :json => {persons:people}
  end
end