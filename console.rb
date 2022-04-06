require './person'
require './student'
require './teacher'
require './decorator'
require './rental'
require './book'
require './classroom'

# pr = Person.new(18, 'Mark', false)

# p pr.name, pr.age, pr.can_use_services?

# pr2 = Person.new(15, 'Val')

# p pr2.name, pr2.age, pr2.can_use_services?

# pr3 = Person.new(11, 'Maria', false)

# p pr3.name, pr3.age, pr3.can_use_services?

# p 'Using student class'

s1 = Student.new(11, 'Carla', false)

# p s1.name, s1.play_hooky, s1.can_use_services?, s1.classroom

s2 = Student.new(19, 'Robert', false)

# p s2.name, s2.play_hooky, s2.can_use_services?, s2.classroom

# p 'Using teacher class'

# t1 = Teacher.new(30, 'Maths', 'Carlos', false)

# p t1.name, t1.can_use_services?, t1.specialization

# person = Person.new(22, 'maximilianus')
# p person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# p capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# p capitalized_trimmed_person.correct_name

# person2 = Person.new(21, 'mark')
# p person2.correct_name
# capitalized_person = CapitalizeDecorator.new(person2)
# p capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# p capitalized_trimmed_person.correct_name

room1 = Classroom.new('Church')
# p room1.label
# p room1.students
room1.add_student(s1)
# p room1.students.each { |st| p st.name }
# p s1.classroom.label

# book1 = Book.new('Bible', 'God')
# p book1.title
# p book1.author
# p book1.rentals

# p '# printing rentals'
# p s1.rentals
# p book1.rentals

# rental1 = Rental.new('2022-04-06', s1, book1)
# p rental1
# p s1.rentals
# p book1.rentals

room2 = Classroom.new('Maths')
s2.classroom = room2
room2.students.each { |st| p st.name }
book2 = Book.new('Learning maths', 'Angel')
rental2 = Rental.new('2022-04-06', s2, book2)
s2.rentals.each { |r| p r.book.title }
book2.rentals.each { |r| p r.person.name }

s2.add_rental(rental2)
s2.rentals.each { |r| p r.book.title }

p 'book 3'

book3 = Book.new('Improving maths', 'Miguel')
book3.add_rental(Rental.new('2022-04-06', s2, book3))
book3.rentals.each { |r| p r.date }
s2.rentals.each { |r| p r.book.title }
