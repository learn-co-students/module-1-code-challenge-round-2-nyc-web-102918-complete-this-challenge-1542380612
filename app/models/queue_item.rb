class QueueItem
attr_reader :viewer, :movie
attr_accessor :rating
@@all = []
def initialize(viewer, movie, rating = nil)
  @viewer = viewer
  @movie = movie
  @rating = rating
  @@all << self
end
def self.all
  @@all
end
end
# QueueItem.all
# returns an array of all QueueItems
# QueueItem#viewer
# returns the viewer associated with this QueueItem
# QueueItem#movie
# returns the movie associated with this QueueItem
# QueueItem#rating
# returns the rating for this QueueItem. If the viewer has not yet rated the movie, QueueItem#rating should be nil
