class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(num)
    arr_to_sum = []
    (1..num-1).each do |n|
      @multiples.each do |multiple|
        if n%multiple==0
          arr_to_sum << n
          break
        end
      end
    end
    return arr_to_sum.inject(&:+) || 0
  end

end