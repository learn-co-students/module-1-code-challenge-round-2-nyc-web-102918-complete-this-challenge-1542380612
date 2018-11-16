require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1=Viewer.new("Arturo")
v2=Viewer.new("Steven")
v3=Viewer.new("Carlos")
v4=Viewer.new("Mike")

m1=Movie.new("Titanic")
m2=Movie.new("Harry Potter")
m3=Movie.new("Anabelle")
m4=Movie.new("Hold")

q1=QueueItem.new(m1,v1,4)
q2=QueueItem.new(m1,v2,5)
q3=QueueItem.new(m2,v3,5)
q4=QueueItem.new(m3,v4,3)
q4=QueueItem.new(m2,v3,4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
