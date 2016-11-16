module BookKeeping
  VERSION = 2
end

class Pangram
 ALPHABET = 'a'.upto('z').to_a
 def self.is_pangram?(str)
  if str.length == 0
    return false
  end
  ALPHABET.each do |letter| 
    if str.downcase.include? letter
      next
    else 
      return false
    end
  end
  return true
  end
end
