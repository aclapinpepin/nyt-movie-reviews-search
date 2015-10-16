require 'httparty'

class MovieReviews 
  include HTTParty
  base_uri 'http://api.nytimes.com/svc/movies/v2/reviews'

  def api_key
    ENV['nyt_movie_reviews_key']
  end

  def base_path
    "/search?api-key=#{api_key}"
  end

  def reviews(options = {})
    self.class.get(base_path, options)
  end
end
