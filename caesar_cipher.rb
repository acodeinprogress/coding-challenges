class String
	def rot13
    if self.nil?
      return nil
    end

    alphabet = ('A'..'Z').to_a
    str = self.split("")
    i = 0
    str.each_with_index do |item, i|
      if item == " "
        str[i] = " "
      else
        value = alphabet.index(item.upcase)
        value > 11 ? value -= 13 : value += 13
        str[i] == item.downcase ? str[i] = alphabet[value].downcase : str[i] = alphabet[value]
      end
    end
    return str.join("")
	end
end
