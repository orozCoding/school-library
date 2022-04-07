require './person'
require './student'
require './teacher'
require './book'
require './rental'

class App
  attr_reader :people, :books

  def initialize()
    @people = []
    @books = []
    @rental = []
  end

  def add_person(type, name, age, specialization = '', permission = '')
    
    perm = false
    perm = true if permission.downcase == 'y'

    person = if type == 1
              Student.new(age, name, perm)
            elsif type == 2
              Teacher.new(age, specialization, name, perm)
            end  
    @people.push(person)
  end

  def add_book(title, author)
    book = Book.new(title, author)
    @books.push(book)
  end

  
end

