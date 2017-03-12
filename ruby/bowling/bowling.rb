module BookKeeping
    VERSION = 3
end

class Game

  def initialize
    @game_score = 0
    @rolls_array = []
  end

  def roll(score)
    @game_score += score
    @game_score += score if ((@rolls_array.length%2 == 0 && @rolls_array.length > 0 && @rolls_array.length < 19 && (@rolls_array[-2] + @rolls_array[-1]) == 10) || @rolls_array[-1] == 10 && @rolls_array.length < 19)
    @game_score += score if (@rolls_array.length < 19 && @rolls_array.length > 1 && @rolls_array[-2] == 10)
    @rolls_array.push(score)
    @game_score = 300 if @game_score > 300
  end

  def score
    @game_score
  end

end