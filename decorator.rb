# frozen_string_literal: true

require './nameable'

# Decorator class
class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

# Capitalize Decorator
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.upcase
  end
end

# Trimmer Decorator
class TrimmerDecorator < Decorator
  def correct_name
    str = @nameable.correct_name
    return str.chars.take(10).join if str.length > 10

    str
  end
end
