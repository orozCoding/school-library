require "./nameable"

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
    @nameable.correct_name.capitalize
  end
end

# Trimmer Decorator
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.strip
  end
end
