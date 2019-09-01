class Anagram
	attr_accessor :base, :sorted_base

	def initialize(word)
		@base = word.downcase
	end


	def match(words)
		words.select(&method(:is_anagram?))
	end

	private

	def rebased_word(word)
		word.downcase.split('').sort.join
	end

	def sorted_base
		@sorted_base ||= rebased_word(base)
	end

	def is_anagram?(word)
		return false if matches_base?(word)
		sorted_base == rebased_word(word)
	end

	def matches_base?(word)
		base == word.downcase
	end
end