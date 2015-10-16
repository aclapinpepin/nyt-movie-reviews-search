require 'movie_reviews'

class SearchesController < ApplicationController
  def show
    # binding.pry
    @movie = MovieReviews.new
    @reviews = @movie.reviews(query: {'query' => params[:search][:movie_query], 'thousand-best' => 'N'})
  end
end
