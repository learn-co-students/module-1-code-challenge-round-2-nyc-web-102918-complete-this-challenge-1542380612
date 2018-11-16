require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1  = Viewer.new("Adam")
v2  = Viewer.new("Batman")
v3  = Viewer.new("Hulk")

m1 = Movie.new("Avengers")
m2 = Movie.new("Captian America")
m3 = Movie.new("Superman")

q1 = QueueItem.new(v1, m1, 5)
q2 = QueueItem.new(v1, m2, 4)
q3 = QueueItem.new(v1, m3, 3)
q4 = QueueItem.new(v2, m1, 3)
q5 = QueueItem.new(v3, m1, 4)
q6 = QueueItem.new(v3, m2, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
