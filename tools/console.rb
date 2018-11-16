require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("John")
v2 = Viewer.new("Ricky")
v3 = Viewer.new("Sarah")
v4 = Viewer.new("Babygirl")
v5 = Viewer.new("Player")
v6 = Viewer.new("Mike")


m1 = Movie.new("Star Wars")
m2 = Movie.new("Close Encounters")
m3 = Movie.new("The Lives of Others")
m4 = Movie.new("2001 a Space Oddyessy")
m5 = Movie.new("JFK")
m6 = Movie.new("American Psycho")
m7 = Movie.new("Boss Baby")

q1 = QueueItem.new(v1, m2)
q2 = QueueItem.new(v4, m4, 78)
q3 = QueueItem.new(v3, m1, 88)
q4 = QueueItem.new(v6, m1, 99)
q5 = QueueItem.new(v5, m7, 91)
q6 = QueueItem.new(v5, m6, 87)
q7 = QueueItem.new(v1, m6, 60)
q8 = QueueItem.new(v5, m3, 97)
q9 = QueueItem.new(v2, m1, 92)
q10 = QueueItem.new(v4, m5, 65)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
