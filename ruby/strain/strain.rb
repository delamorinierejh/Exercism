
class Array
  
  def keep
    new_arr = []
    self.each do |element|
      if yield element
        new_arr << element
      end
    end
    new_arr 
  end

  def discard
    new_arr = []
    self.each do |element|
      if !(yield element)
        new_arr << element
      end
    end
    new_arr 
  end

end