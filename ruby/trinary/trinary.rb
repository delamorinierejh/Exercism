module BookKeeping
  VERSION = 1
end

class Trinary

  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if @num != @num.gsub(/\D/, '')
    total = 0
    @num.chars.reverse.each_with_index do |val, index|
      return 0 if val.to_i > 2
      total += val.to_i * (3**index)
    end
    total
  end

end