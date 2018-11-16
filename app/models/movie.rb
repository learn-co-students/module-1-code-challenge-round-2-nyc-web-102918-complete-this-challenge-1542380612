class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end


 #   + returns an array of all `Movie`
  def self.all
    @@all
  end

  #Movie#queue_items`
  #   + returns an array of all the `QueueItem` instances that contain this movie
  def queue_items
    movies = QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
    movies.map do |item|
      item.movie
    end
  end

  # + `Movie#viewers`
  #   + returns an array of all of the `Viewer`s with this `Movie` instance in
  #   their queue
  def viewers
    movies = QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
    movies.map do |views|
      views.viewer
    end
  end

  # + `Movie#average_rating`
  #   + returns the average of all ratings for this instance of `Movie`
  def average_rating
    sum = 0
    movies = QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
    movies.map do |movie|
      sum += movie.rating
    end
    sum/movies.length
  end

  # + `Movie.highest_rated`
  #   + returns the instance of `Movie` with the highest average rating
  #have not finished yet with this method
  def highest_rated
    movies = QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
    rating_array = movies.map do |movie|
      movie.rating
    end
    rating_array.max
  end



end






# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
