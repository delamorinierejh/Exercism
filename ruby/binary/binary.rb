module BookKeeping
  VERSION = 3
end

class Binary

  def self.to_decimal(n)

    total = 0
    n.chars.reverse.each_with_index do |char, i|
      if !"01".include?(char)
        raise ArgumentError
      elsif char == '1'
        total += 2**i
      end
    end
    total
  end

end