class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

#Movie.all` returns an array of all `Movie`
  def self.all
    @@all
  end

#+ `Movie#queue_items`returns an array of all the `QueueItem` instances that contain this movie

  def queue_items
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  #`Movie#viewers`
  #returns an array of all of the `Viewer`s with this `Movie` instance in their queue
  def viewers
    self.queue_items.map do |queue|
      queue.viewer
    end
  end

  #  + returns the average of all ratings for this instance of `Movie`
  def average_rating
    array= self.queue_items.map do |queue|  ##creating an array with numbers of rating
      queue.rating
    end

    array.inject {|x,y| x + y}.to_f/ array.length  #this finally will give the average

  end

  # returns the instance of `Movie` with the highest average rating
  def highest_rated
    array= self.queue_items.map do |queue| #creating an array with numbers of rating
      queue.rating
    end

    min= array[0]
    max= array[0]

    array.each do |num| #this loop will give me the highest number in that arrray
      if num > max
        max= num
      elsif num < min
        min =num
      end
    end


    self.queue_items.find do |queue| #now finding that movie with that rating
      queue.rating == max
    end

  end

end
