module BookKeeping
  VERSION = 2
end

class BeerSong

  def verse(number)
    number = (number == 0) ? 'No more' : number
    second_num = number.to_i > 1 ? (number-1) : "no more"
    it_one = number.to_i > 1 ? "one" : "it"
    first_bit = "#{number} bottle#{number == 1 ? '' : 's'} of beer on the wall, #{number.class == 'Fixnum' ? number : number.to_s.downcase} bottle#{number == 1 ? '' : 's'} of beer.\n"
    second_bit = "Take #{it_one} down and pass it around, #{second_num} bottle#{second_num != 1 ? 's' : ''} of beer on the wall.\n"
    second_bit = number == "No more" ? "Go to the store and buy some more, 99 bottles of beer on the wall.\n" : second_bit
    first_bit + second_bit
  end

  def verses(num1, num2)
    num1.downto(num2).map { |num| verse(num) }.join("\n")
  end

  def lyrics
    verses(99, 0)
  end 

end
