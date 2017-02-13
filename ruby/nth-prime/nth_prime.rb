module BookKeeping
  VERSION = 1
end

class Prime

  def self.nth(n)
    return raise ArgumentError.new("Argument Error") if n < 1
    return 2 if n == 1
    count = n - 1
    start = 3
    primes = [2]
    while count > 0
      is_prime = true
      primes.each do |prime|
        if start%prime == 0
          is_prime = false
          break
        end 
      end
      if is_prime
        primes << start
        count -= 1
      end
      start += 1
    end
    primes[-1]
  end

end