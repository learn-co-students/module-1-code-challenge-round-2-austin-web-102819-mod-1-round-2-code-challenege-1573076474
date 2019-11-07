class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select {|r|r.movie == self}
  end

  def reviewers
    reviews.map {|r|r.viewer}
  end

  def average_rating
   t =  reviews.map {|r| r.rating}.reduce(0) {|s,n| s+n}
   t/reviews.map {|r| r.rating}.count
  end

  #Movie.highest_rated => hp

  def self.highest_rated
   Review.all.select {|r| r.movie == self}
  end

  def self.all
    @@all
  end

end
