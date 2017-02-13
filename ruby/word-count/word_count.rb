module BookKeeping
  VERSION = 1
end

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    hash = {}
    @phrase.gsub!(',', ' ')
    @phrase.downcase.split(' ').each do |word|
      while !word[0].match(/^[[:alpha:]]$/) && !word[0].match(/[0-9]/)
        word[0] = ''
      end
      while !word[-1].match(/^[[:alpha:]]$/) && !word[-1].match(/[0-9]/)
        word[-1] = ''
      end
      if hash.key?(word)
        hash[word] += 1
      else
        hash[word] = 1
      end
    end
    hash
  end

end