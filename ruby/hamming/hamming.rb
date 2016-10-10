class Hamming
  def self.compute(str_one, str_two)
    count = str_one.length
    if (str_one.length == str_two.length)
    for i in 0..str_one.length-1
      count -= 1 if (str_one[i] == str_two[i])
    end
    count
  else
    raise(ArgumentError)
  end
  end
end
