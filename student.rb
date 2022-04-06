require './person'

# Student's class
class Student < Person
  def initialize(age, name = 'Unknown', parent_permission = 'true')
    super(age, name, parent_permission)
  end

  attr_reader :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
