require './person'
require './student'
require './teacher'
require './decorator'

puts 'hello'

pr = Person.new(18, 'Mark', false)

puts pr.name, pr.age, pr.can_use_services?

pr2 = Person.new(15, 'Val')

puts pr2.name, pr2.age, pr2.can_use_services?

pr3 = Person.new(11, 'Maria', false)

puts pr3.name, pr3.age, pr3.can_use_services?

puts 'Using student class'

s1 = Student.new(11, 3, 'Carla', false)

puts s1.name, s1.play_hooky, s1.can_use_services?, s1.classroom

s2 = Student.new(19, 3, 'Robert', false)

puts s2.name, s2.play_hooky, s2.can_use_services?, s2.classroom

puts 'Using teacher class'

t1 = Teacher.new(30, 'Maths', 'Carlos', false)

puts t1.name, t1.can_use_services?, t1.specialization

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name

person2 = Person.new(21, 'mark')
p person2.correct_name
capitalized_person = CapitalizeDecorator.new(person2)
p capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name
