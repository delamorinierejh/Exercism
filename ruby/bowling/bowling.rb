class Game
	class BowlingError < ArgumentError; end

	attr_accessor :frames

	def initialize
		@frames = [Frame.new]
	end

	def score
		raise BowlingError.new unless game_is_ended?
		frames.reduce(0) { |sum, frame| sum + frame.overall_score }
	end

	def roll(pins)
		raise BowlingError.new if game_is_ended?
		raise BowlingError.new unless roll_is_legal?(pins)
		current_frame.roll(pins)
		adjust_bonuses(pins) if !is_first_frame?
		add_new_frame if need_new_frame?
	end

	private

	def current_frame
		frames.last
	end

	def adjust_bonuses(pins)
		previous_frames.each do |frame|
			frame.adjust_bonuses(pins)
		end
	end
	
	def previous_frames
		frames[0..-2]
	end

	def is_first_frame?
		frames.count == 1
	end

	def need_new_frame?
		return false if current_frame.is_a? FinalFrame
		current_frame.ended?
	end

	def add_new_frame
		if frames.count < 9
			frames << Frame.new
		else
			frames << FinalFrame.new
		end
	end

	def roll_is_legal?(pins)
		pins >= 0 && pins <= 10
	end

	def game_is_ended?
		frames.count == 10 && frames.last.ended?
	end
end

class Frame
	attr_accessor :rolls, :bonuses

	def initialize
		@rolls = []
		@bonuses = []
	end

	def overall_score
		rolls_score + bonuses_score
	end

	def roll(pins)
		rolls << pins
		raise Game::BowlingError.new unless frame_is_legal?
	end

	def adjust_bonuses(pins)
		if strike? && bonuses.count < 2
			bonuses << pins
		elsif spare? && bonuses.count == 0
			bonuses << pins
		end
	end

	def ended?
		strike? || rolls.count == 2
	end

	private

	def rolls_score
		rolls.reduce(:+) || 0
	end

	def bonuses_score
		bonuses.reduce(:+) || 0
	end

	def frame_is_legal?
		rolls_score <= 10
	end

	def strike?
		rolls.count == 1 && rolls_score == 10
	end

	def spare?
		rolls.count == 2 && rolls_score == 10
	end
end

class FinalFrame < Frame
	def ended?
		return true if rolls.count == 3
		return false if rolls.count < 2
		return false if first_two_rolls_score == 10
		return false if rolls[0] == 10
		true
	end

	private

	def frame_is_legal?
		return true unless rolls.count == 3
		return false if last_two_rolls_illegal?
		true
	end

	def first_two_rolls_score
		rolls[0..1].reduce(:+)
	end

	def last_two_rolls_score
		rolls[1..-1].reduce(:+)
	end

	def last_two_rolls_illegal?
		return false if rolls[1] == 10
		first_two_rolls_score != 10 && last_two_rolls_score > 10 && last_two_rolls_score < 20
	end
end