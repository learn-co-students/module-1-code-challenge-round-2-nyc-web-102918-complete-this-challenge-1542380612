class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select { |item| item.viewer == self }
  end

  def queue_movies
    queue_items.map { |item| item.movie }
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    if queue_movies.include?(movie)
      unrated = queue_items.find { |item| item.movie == movie }
      unrated.rating = rating 
    else
      QueueItem.new(self, movie, rating)


    end

  end


end
