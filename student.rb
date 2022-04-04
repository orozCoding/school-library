# frozen_string_literal: true

require './person'

# Student's class
class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  attr_reader :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end
end
