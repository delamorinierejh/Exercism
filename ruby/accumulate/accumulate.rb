module BookKeeping
  VERSION = 1
end


class Array
  
  def accumulate
    new_arr = []
    self.each do |element|
      new_arr << (yield element)
    end
    new_arr 
  end

end