module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(number)
    number.to_s
    if (number % 3 == 0 && number % 5 == 0 && number % 7 == 0)
      'PlingPlangPlong'
    elsif (number % 5 == 0 && number % 7 == 0 )
      'PlangPlong'
    elsif (number % 3 == 0 && number % 7 == 0 )
      'PlingPlong'
    elsif (number % 3 == 0 && number % 5 == 0 )
      'PlingPlang'
    elsif (number % 7 == 0 )
      'Plong'
    elsif (number % 5 == 0)
      'Plang'
    elsif (number % 3 == 0)
      'Pling'
    else 
      number.to_s
    end
  end
end
