module BookKeeping
  VERSION = 1
end

class Trinary

  def initialize(num)
    @num = num
  end

  def to_decimal
    if @num != @num.gsub(/\D/, '')
      return 0
    end
    total = 0
    @num.chars.reverse.each_with_index do |val, index|
      if val.to_i > 2
        return 0
      end
      total += val.to_i * (3**index)
    end
    total
  end

end