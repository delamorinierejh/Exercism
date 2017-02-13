module BookKeeping
  VERSION = 1
end

class Grains

  NUM_OF_SQUARES = 64

  def self.square(n)
    raise ArgumentError if (n < 1 || n > 64)
    2**(n-1)
  end

  def self.total
    total = 0
    (1..NUM_OF_SQUARES).each do |num|
      total += 2**(num-1)
    end
    total
  end

end