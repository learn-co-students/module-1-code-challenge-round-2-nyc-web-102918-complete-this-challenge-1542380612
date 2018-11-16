class QueueItem

  @@all = []
#returns the viewer associated with this `QueueItem`
# + `QueueItem#movie`
#   + returns the movie associated with this `QueueItem`
  attr_accessor :viewer, :movie

  def initialize(viewer, movie)
    @viewer = viewer
    @movie = movie
    @@all << self
  end

  # + `QueueItem.all`
  #   + returns an array of all `QueueItem`s
  def self.all
    @@all
  end

  ### `QueueItem`
  #
  # _A `QueueItem` object represents that an individual user has added a particular movie to their queue,
  # and possibly rated it. **It is not the full queue, but a single item in the queue.**_
  #
  # + `QueueItem#rating`
  #   + returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil`

end
