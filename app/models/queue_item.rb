class QueueItem

  # + `QueueItem#viewer`
  #  + returns the viewer associated with this `QueueItem`
  # + `QueueItem#movie`
  #  + returns the movie associated with this `QueueItem`
  attr_accessor :movie, :viewer, :rating
  @@all = []

#`QueueItem#rating`
#returns the rating for this `QueueItem`. If the viewer has not yet rated
#the movie, `QueueItem#rating` should be `nil`

  def initialize(movie, viewer, rating = 0)
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@all << self
  end

  # + `QueueItem.all`
  #   + returns an array of all `QueueItem`s
  def self.all
    @@all
  end
end
