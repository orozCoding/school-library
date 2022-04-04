# frozen_string_literal: true

require './person'
require './student'
require './teacher'

puts 'hello'

pr = Person.new(18, 'Mark', false)

puts pr.name
puts pr.age
puts pr.can_use_services?

pr2 = Person.new(15, 'Val')

puts pr2.name
puts pr2.age
puts pr2.can_use_services?

pr3 = Person.new(11, 'Maria', false)

puts pr3.name
puts pr3.age
puts pr3.can_use_services?

puts 'Using student class'

s1 = Student.new(11, 3, "Carla", false)

puts s1.name
puts s1.play_hooky
puts s1.can_use_services?
puts s1.classroom

s2 = Student.new(19, 3, "Robert", false)

puts s2.name
puts s2.play_hooky
puts s2.can_use_services?
puts s2.classroom

puts 'Using teacher class'

t1 = Teacher.new(30, "Maths", "Carlos", false)

puts t1.name
puts t1.can_use_services?
puts t1.specialization
