require 'prime'

class PrimeFactors

  def self.for(num)
    root = Math.sqrt(num)/1
    arr = []
    digit = 2
    while num > 1 do
      if Prime.prime?(digit)
        while num % digit == 0
          arr << digit
          num /= digit
        end
      end
      digit += 1
    end
    arr
  end

end