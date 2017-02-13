module BookKeeping
  VERSION = 2
end

class RunLengthEncoding

  def self.encode(string)
    ret_string = ''
    app_string = ''
    count = 1
    string.chars.each do |character|
      if character == app_string
        count += 1
      else
        if count > 1
          ret_string += count.to_s
        end
        ret_string += app_string
        count = 1
      end
      app_string = character
    end
    ret_string += "#{count > 1 ? count.to_s : ''}" + app_string
    ret_string
  end


  def self.decode(string)
    ret_string = ''
    number = ''
    string.chars.each_with_index do |character, index|
      if character.match(/[0-9]/)
        number += character
      else
        if number.length > 0
          number.to_i.times do
            ret_string += character
          end
        else
          ret_string += character
        end
        number = ''
      end
    end
    ret_string
  end

end




