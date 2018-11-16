require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
mov1 = Movie.new("Movie1")
mov2 = Movie.new("Movie2")
mov3 = Movie.new("Movie3")

v1 = Viewer.new("Viewer1")
v2 = Viewer.new("Viewer2")
v3 = Viewer.new("Viewer3")

q1 = QueueItem.new(mov1, v2)
q2 = QueueItem.new(mov3, v1)
q3 = QueueItem.new(mov2, v3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
