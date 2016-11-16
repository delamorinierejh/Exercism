module BookKeeping
  VERSION = 1
end

class Sieve

  def initialize(num)
    @num = num
  end

  def primes
    range = (2..@num).to_a
    x=0
    while (x < range.length)
      i = 2
      while (i < range[x])
        if (range[x] % i == 0) 
          range.slice!(x) 
          x -= 1
        end
        i += 1
      end
      x += 1
    end
    range
  end


end

