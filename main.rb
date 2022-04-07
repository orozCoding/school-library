require './app'
require './person'
require './book'

def option_number
  options= [
    '1 - List all books',
    '2 - List all people',
    '3 - Create a person',
    '4 - Create a book',
    '5 - Create a rental',
    '6 - List all rentals for a given person id',
    '7 - Exit'
  ]
  puts ' Please choose an option by entering a number:'

  options.each { |o| puts o.to_s}

  gets.chomp.to_i

end

def add_person(app)
  puts 'Do you want to register a [1]-Student or a [2]-Teacher? [Input the number]:'
  type = gets.chomp.to_i
  return puts 'Please input 1 for Student or 2 for Teacher' unless [1,2].include?(type)

  puts 'Name: '
  name = gets.chomp.capitalize
  puts 'Age: '
  age = gets.chomp.to_i

  specialization = ''
  permission = ''

  case type
  when 1
    puts 'Has parent permission? [y/n]: '
    permission = gets.chomp.downcase
    app.add_person(type, name, age, specialization, permission)
  when 2
    puts 'Specialization: '
    specialization = gets.chomp.capitalize
    app.add_person(type, name, age, specialization, permission)
  else
    return
  end

  puts 'Person successfully registered!'
end

def add_book(app)
  puts 'Title: '
  title = gets.chomp
  puts 'Author: '
  author = gets.chomp

  app.add_book(title, author)
  puts 'Book successfully created!'
end

def add_rental(app)
  puts 'Select a book from the following list by its number:'
  i = 1
  app.books.each do |b|
    puts "[#{i}] - Title: #{b.title}, Author: #{b.author}"
    i += 1
  end
  book_index = gets.chomp.to_i - 1

  puts 'Select a person from the following list by its number:'
  i = 1
  app.people.each do |p|
    puts "[#{i}] - ID: #{p.id}, Name: #{p.name}, Age: #{p.age}"
    i += 1
  end
  person_index = gets.chomp.to_i - 1

  puts 'Date: '
  date = gets.chomp

  person = app.people[person_index]
  book = app.books[book_index]

  app.add_rental(date, person, book)

  puts 'Rental created successfully!'
end

def display_rentals(app)
  puts 'Select a person\'s ID from this list'
  app.people.each do |p|
    puts "ID: #{p.id}, Name: #{p.name}"
  end

  puts ''
  puts 'ID of person: '
  person_id = gets.chomp.to_i
  puts ''
  puts 'Rentals: '
  app.list_rentals_by_id(person_id)
  puts ''
end

def run_option(app, option)
  case option
  when 1 then app.list_books
  when 2 then app.list_people
  when 3 then add_person(app)
  when 4 then add_book(app)
  when 5 then add_rental(app)
  when 6 then display_rentals(app)
  else
    puts 'Please select a valid number from the list!'
  end
end

def main
  app = App.new

  puts 'Welcome to School Library App!'

  loop do
    option = option_number
    break if option == 7

    run_option(app, option)
  end

end

main