require 'prime'

class PrimeFactors

  def self.for(num)
    Prime.prime_division(num).map do |primes|
      Array.new(primes[1], primes[0])
    end.flatten
  end

end