class Series

  def initialize(code)
    @code = code
  end

  def slices(n)
    raise ArgumentError if n > @code.length 
    arr = []
    count = n-1
    start = 0
    while count < @code.length
      arr << @code[start..count]
      start += 1
      count += 1
    end
    arr
  end

end