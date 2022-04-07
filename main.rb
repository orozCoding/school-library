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
  puts ' Please choos an option by entering a number:'

  options.each { |o| puts o.to_s}

  gets.chomp.to_i

end

def main
  app = App.new

  puts 'Welcome to School Library App!'
  
  loop do 
    option = option_number()
    break if option == 7
    run_option(app, option)
  end

end

main