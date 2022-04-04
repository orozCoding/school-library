# frozen_string_literal: true

require './person'

# Student's class
class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @clasroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
