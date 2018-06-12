def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.collect{|name| badge_maker(name)}
end

def assign_rooms(array)
  new_array = []
  array.each_with_index{|name, index| new_array << "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
  new_array
end

def printer(array)
  badges = batch_badge_creator(array)
  badges.each{|badge| puts badge}
  assignments = assign_rooms(array)
  assignments.each{|assignment| puts assignment}
end