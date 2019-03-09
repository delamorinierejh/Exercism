class Series

  def initialize(code)
    @code = code
  end

  def slices(n)
    raise ArgumentError if n > @code.length 
    arr = []
    i = 0
    j = n-1
    while j < @code.length
      arr << @code[i..j]
      i += 1
      j += 1
    end
    arr
  end

end