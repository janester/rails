class Movie < ActiveRecord::Base
  attr_accessible :description, :is_in_theaters, :rating, :released, :title
end
