require "./person.rb"

puts "hello"

pr = Person.new(18, "Mark", false)

puts pr.name
puts pr.age
puts pr.can_use_services?

pr2 = Person.new(15, "Val")

puts pr2.name
puts pr2.age
puts pr2.can_use_services?

pr3 = Person.new(11, "Maria", false)

puts pr3.name
puts pr3.age
puts pr3.can_use_services?