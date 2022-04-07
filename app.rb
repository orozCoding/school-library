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
    @rentals = []
  end

  def list_people
    @people.each { |p| puts "[#{p.class}] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"}
  end

  def list_books
    @books.each { |b| puts "Title: #{b.title}, Author: #{b.author}" }
  end

  def add_person(type, name, age, specialization = '', permission = '')
    perm = false
    perm = true if permission.downcase == 'y'

    case type
    when 1 then person = Student.new(age, name, perm)
    when 2 then person = Teacher.new(age, specialization, name, perm)
    end

    @people.push(person)
  end

  def add_book(title, author)
    book = Book.new(title, author)
    @books.push(book)
  end

  def add_rental(date, person, book)
    rental = Rental.new(date, person, book)
    @rentals.push(rental)
  end

  def list_rentals_by_id(id)
    @rentals.each do |r|
      if r.person.id == id
        puts "Date: #{r.date}, Book: #{r.book.title} by #{r.book.author}"
      end
    end
  end
end
