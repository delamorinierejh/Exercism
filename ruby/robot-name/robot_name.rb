module BookKeeping
  VERSION = 2
end

class Robot

  LETTERS = ('A'..'Z').to_a
  NUMBERS = ('0'..'9').to_a
  @@names = []

  attr_reader :name

  def initialize
    @@names << generate_name
  end

  def generate_name
    @name = build_name
    while @@names.include? @name 
      @name = build_name
    end
    @name
  end

  def reset
    @@names.slice!(@@names.index(@name))
    @@names << generate_name
  end

  def build_name
    "#{letter}#{letter}#{number}#{number}#{number}"
  end

  def letter
    LETTERS.sample
  end

  def number
    NUMBERS.sample
  end

end
