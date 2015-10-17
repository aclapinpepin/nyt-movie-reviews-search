require 'movie_reviews'

class HomesController < ApplicationController
  def show
    @reviews = MovieReviews.new.reviews(search_options) 
  end

  private

  def search_options
    {query: {'query' => params[:search], 'thousand-best' => 'N'} }
  end
end
