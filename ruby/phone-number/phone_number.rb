class PhoneNumber

  def initialize(num)
    @num = num.gsub(/\D/, '')
    @letters = num.gsub(/[^a-zA-Z]/, '')
  end

  def number
    if @letters.length > 0 || @num.length < 10 || @num.length > 11 || (@num.length == 11 && @num[0] != '1')
      return '0000000000'
    else
      @num.chars.reverse[0..9].reverse.join
    end
  end

  def area_code
    if number != '0000000000'
      number[0..2]
    end
  end

  def to_s
    if number != '0000000000'
      "(#{number[0..2]}) #{number[3..5]}-#{number[6..-1]}"
    end
  end

end