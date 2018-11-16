class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end
  def queue_items
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
  end
  def viewers
    self.queue_items.map do |queue_item|
      queue_item.viewer
    end.uniq
  end
  def average_rating
    combined_ratings = self.queue_items.inject(0) do |sum, queue|
      sum += queue.rating
    end
    combined_ratings/(self.queue_items.length)
  end
  def self.highest_rated
    self.all.max_by do |movie|
      movie.average_rating
    end
  end
end
# Movie.all
# returns an array of all Movie
# Movie#queue_items
# returns an array of all the QueueItem instances that contain this movie
# Movie#viewers
# returns an array of all of the Viewers with this Movie instance in their queue
# Movie#average_rating
# returns the average of all ratings for this instance of Movie
# Movie.highest_rated
# returns the instance of Movie with the highest average rating
