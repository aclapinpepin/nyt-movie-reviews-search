require 'movie_reviews'

class HomesController < ApplicationController
  def show
    @reviews = MovieReviews.new.reviews(search_options) 

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def search_options
    {query: {'query' => params[:search]}}
  end
end
