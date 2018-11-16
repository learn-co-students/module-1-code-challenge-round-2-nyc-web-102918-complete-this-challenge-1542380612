require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie1 = Movie.new("Movie1")
movie2 = Movie.new("Movie2")
movie3 = Movie.new("Movie3")
movie4 = Movie.new("Movie4")

viewer1 = Viewer.new("viewer1")
viewer2 = Viewer.new("viewer2")
viewer3 = Viewer.new("viewer3")
viewer4 = Viewer.new("viewer4")

q1 = QueueItem.new(viewer1, movie1, 3)
q2 = QueueItem.new(viewer1, movie4, 5)
q3 = QueueItem.new(viewer2, movie2, 5)
q4 = QueueItem.new(viewer2, movie3, 2)
q5 = QueueItem.new(viewer3, movie3, 2)
q6 = QueueItem.new(viewer3, movie2, 1)
q7 = QueueItem.new(viewer4, movie1, 4)
######### Extra Testing not shown from console ######################
#@@all works on all 3 tables
#movie1.viewers => [#<Viewer:0x007fe4b2a5ee40 @username="viewer1">, #<Viewer:0x007fe4b2a5ed50 @username="viewer4">]
#movie1.queue_items => [#<QueueItem:0x007fe4b2a5ed28@movie=#<Movie:0x007fe4b2a5ef80 @title="Movie1">,@rating=3,@viewer=#<Viewer:0x007fe4b2a5ee40 @username="viewer1">>,#<QueueItem:0x007fe4b2a5ec38@movie=#<Movie:0x007fe4b2a5ef80 @title="Movie1">,@rating=4,@viewer=#<Viewer:0x007fe4b2a5ed50 @username="viewer4">>]
#viewer1.add_movie_to_queue(movie3) => #<QueueItem:0x007fe4b20dd088 @movie=#<Movie:0x007fe4b2a5eee0 @title="Movie3">, @rating=nil, @viewer=#<Viewer:0x007fe4b2a5ee40 @username="viewer1">>
#viewer1.rate_movie(movie3, 3) => replaces nil with a new rating of 3
#viewer1.queue_movies => [#<Movie:0x007fe4b2a5ef80 @title="Movie1">, #<Movie:0x007fe4b2a5ee90 @title="Movie4">, #<Movie:0x007fe4b2a5eee0 @title="Movie3">]
#viewer1.queue_items => returns all the queue instances
#Movie.highest_rated=> #<Movie:0x007f96b9819190 @title="Movie4">
####################################################################
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
