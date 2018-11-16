class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

# Viewer.all returns all of the viewers
  def self.all
    @@all
  end

  # this method should return an array of
  # Movie instances in the Viewer's queue.
  def queue_movies
    QueueItem.all.select do |queue_item|
      queue_item.viewer == self
    end
  end

  # this method should receive a Movie instance as its
  # only argument and add it to the Viewer's queue
  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  # this method should assign the rating to the viewer's
  # QueueItem for that movie.

  # the logic I am looking to express if to first go over each
  # queue_item to check if an instance of a movie already exist
  #if so I want to reassign the rating queue_item.rating = rating
  #if the movie instance does not exist in the que then to create
  #a new instance with the viewer(self), movie(arg passed in), and (rating)
  def rate_movie(movie, rating)
    queue_movies.each do |queue_item|
      if queue_item.movie == movie
         queue_item.rating = rating
      elseif queue_item.movie != movie
        QueueItem.new(self, movie, rating)
      end
    end
  end
end

  # If the movie is not already
  # in the viewer's queue, this method should
  # add a new QueueItem with the viewer,
  # movie, and rating. If the movie is already in the
