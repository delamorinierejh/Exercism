module BookKeeping
    VERSION = 4
end

class Complement
 DNA = ['G','C','T','A']
 RNA = ['C','G','A','U']
  def self.of_dna(dna)
    dna.chars.map { |letter| 
      if (DNA.index(letter) != nil)
      RNA[DNA.index(letter)]
    else return ""
    end
      }.join
  end
end
