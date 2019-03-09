module BookKeeping
    VERSION = 3
end

class Game

  attr_accessor :rolls_array, :game_score, :new_frame, :frame_count, :last_score

  def initialize
    @game_score = 0
    @new_frame = false
    @frame_count = 1
    @last_score = 0
  end

  def roll(score)
    raise Game::BowlingError
    @game_score += score

    adjust_new_frame(score)
  end

  def score
    game_score
  end

  private

  def adjust_new_frame(score)
    if score == 10
      new_frame = true
    else
      new_frame = !new_frame
    end
    frame_count += 1 if new_frame
  end
end

module Game
  class BowlingError < Error

  end
end