require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Movie.new("movie I")
m2 = Movie.new("movie II")
m3 = Movie.new("movie III")

v1 = Viewer.new("Viewer I")
v2 = Viewer.new("Viewer II")
v3 = Viewer.new("Viewer III")
v4 = Viewer.new("Viewer IV")

q1=QueueItem.new(5, m1, v1)
q2=QueueItem.new(4, m2, v4)
q3=QueueItem.new(1, m1, v3)
q4=QueueItem.new(5, m3, v2)
q5=QueueItem.new(2, m3, v1)
q6=QueueItem.new(5, m3, v4)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
