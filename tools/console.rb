require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

v_1 = Viewer.new("Sally")
v_2 = Viewer.new("Joe")
v_3 = Viewer.new("Mark")
v_4 = Viewer.new("Kyle")
v_5 = Viewer.new("Liz")

m_1 = Movie.new("Thundergun Express")
m_2 = Movie.new("Tokyo Midnight")
m_3 = Movie.new("Goldeneye")
m_4 = Movie.new("IT")
m_5 = Movie.new("Just Clowin Around")

q_1 = QueueItem.new(v_1, m_2, 3)
q_2 = QueueItem.new(v_2, m_3, 5)
q_3 = QueueItem.new(v_3, m_1, 3)
q_4 = QueueItem.new(v_4, m_5)
q_5 = QueueItem.new(v_5, m_4, 1)
q_6 = QueueItem.new(v_4, m_4, 3)
q_7 = QueueItem.new(v_3, m_3, 1)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
