module BookKeeping
  VERSION = 3
end

class Squares
 
  def initialize(num)
    @num = num
  end
 
  def square_of_sum
    square_of_sum = 0
    (1..@num).each do |number|
      square_of_sum += number
    end
    square_of_sum = square_of_sum**2
    square_of_sum
  end
 
  def sum_of_squares
    sum_of_squares = 0
    (1..@num).each do |i|
      sum_of_squares += i**2
    end
    sum_of_squares = sum_of_squares
    sum_of_squares
  end
 
  def difference
    difference = square_of_sum - sum_of_squares
    difference
  end
 
end
