# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each{|attendee|
    badges.push(badge_maker(attendee))
  }
  badges
end

def assign_rooms(attendees)
  room_assignments = []
  for i in 0...attendees.size
    room_assignments.push("Hello, #{attendees[i]}! You'll be assigned to room #{i+1}!")
  end
  room_assignments
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  room_assignments = assign_rooms(attendees)
  badges = badges.concat(room_assignments)
  badges.each{|badge| puts badge}
end
