class String
	def rot13
    if self.nil?
      return nil
    end

    alphabet = ('A'..'Z').to_a
    str = self.split("")
    i = 0
    while i < str.length
      if str[i] == " "
        str[i] = " "
      else
        value = alphabet.index(str[i].upcase)
        value > 11 ? value -= 13 : value += 13
        str[i] == str[i].downcase ? str[i] = alphabet[value].downcase : str[i] = alphabet[value]
      end
      i += 1
    end
    return str.join("")
	end
end
