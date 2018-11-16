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
    QueueItem.all.select { |item| item.movie == self }
  end

  def viewers
    queue_items.map { |item| item.viewer }
  end

  def average_rating
    ratings = queue_items.map { |item| item.rating }
    sum = ratings.inject(:+)
    sum/ratings.length
  end

  def self.highest_rated
    ratings = @@all.map { |item| item.rating } # this method is wrong. Would probably try a helper method before this. 
    ratings.max { |low, high| low <=> high }
  end

end
