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

  # returns an array of all the
  # QueueItem instances that contain this movie
  def queue_items
    QueueItem.all.select do  |queue_item|
      queue_item.movie == self
    end
  end

  # returns an array of all of the
  # Viewers with this Movie instance in their queue
  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
    end
  end

  # returns the average of all ratings
  # for this instance of Movie
  def average_rating
    rating = queue_items.map do |queue_item|
      queue_item.rating
    end
    rating.inject(:+) / rating.length
  end

  # def self.highest_rated
  #   self.all.select do |movie|
  #     #running out of time to finish this method, but i want to iterate
  #     #over the each instance in the class determine the average and return the highest average
  # end

end
