require 'movie_reviews'

class SearchesController < ApplicationController
  def show
    @reviews = MovieReviews.new.reviews search_options 
  end

  def search_options
    {query: {'query' => params[:search][:movie_query], 'thousand-best' => 'N'} }
  end
end