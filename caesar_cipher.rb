class String
	def rot13
    if self.nil?
      return nil
    end

    uppercase_alphabet = ('A'..'Z').to_a
    lowercase_alphabet = ('a'..'z').to_a
    str = self.split("")
    new_str = []
    i = 0
    while i < str.length
      if str[i] == " "
        new_str << " "
      else
        value = uppercase_alphabet.index(str[i].upcase)
        if value > 11
          value -= 13
        else
          value += 13
        end
        if str[i] == str[i].downcase
          new_str << lowercase_alphabet[value]
        else
          new_str << uppercase_alphabet[value]
        end
      end
      i += 1
    end
    return new_str.join("")
	end
end
