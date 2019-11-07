class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select {|r|r.viewer == self}
  end

  def reviewed_movies
    reviews.map {|r| r.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  #buford.rate_movie(hp,9) => change exsisting review
  #adam.rate_movie(hp,9) => create new review
  def rate_movie(movie, rating)
    if reviewed_movies.include?(movie)
      then 
      r = reviews.select{|r| r.movie == movie}[0]
      r.rating = rating
       r
    else
      Review.new(self, movie, rating)
    end

  end

  def self.all
    @@all
  end
  
end
