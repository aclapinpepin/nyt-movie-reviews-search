require 'movie_reviews'

class SearchesController < ApplicationController
  def show
    @reviews = MovieReviews.new.reviews search_options 
  end

  def search_options
    {query: {'query' => params[:search], 'thousand-best' => 'N'} }
  end
end
