module StringReverser
	def self.reverse(input)
    if input.nil?
      return nil
    end
    arr = input.split("")
		reversed_str = ""
    while arr.length > 0
      reversed_str += arr.pop
    end
    return reversed_str
	end

end
