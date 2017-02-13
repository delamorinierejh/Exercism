class Bob
  
  def self.hey(str)
    str = str.strip
    if str == ''
      return 'Fine. Be that way!'
    elsif str == str.upcase and str.chars.any? { |char| char.match(/^[[:alpha:]]$/)}
      return 'Whoa, chill out!'
    elsif str[-1] == '?'
      return 'Sure.'
    else
      return 'Whatever.'
    end
  end

end

