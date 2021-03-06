require './nameable'

# Person class
class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission = 'true')
    super()
    @id = Random.rand(1...10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals

  private

  def of_age?
    return true if @age >= 18

    false
  end

  public

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  def correct_name
    @name.to_s
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end
end
