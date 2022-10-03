class Movie < ActiveRecord::Base
  def self.all_ratings
    #['pg']
    Movie.uniq.pluck(:rating)
  end
  def self.with_ratings(ratings)
    ratings.nil? ? Movies.all : Movie.where(rating: ratings)
  end
end