class Complement
 DNA = 'GCTA'
 RNA = 'CGAU'
  def self.of_dna(dna)
    dna.split.map { |letter| RNA.index(DNA.index(letter))}.join
  end
end
