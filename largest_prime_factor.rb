class LargestPrimeFactor
  def is_prime(number)
    if number % 2 == 0
      return false
    end
    (3..Math.sqrt(number) + 1).step(2) do |j|
      if number % j == 0
        return false
      end
    end
    return true
  end

  def largest_prime_of(number)
    if number == nil
      return nil
    end
    @highest_prime = 1
    if number % 2 == 0
      pair = number / 2
      if is_prime(pair)
        @highest_prime = pair
      else
        @highest_prime = 2
      end
    end
    (3..Math.sqrt(number) + 1).step(2) do |i|
      if number % i == 0
        pair = number / i
        if is_prime(pair)
          @highest_prime = pair
        elsif is_prime(i)
          @highest_prime = i
        end
      end
    end
    if @highest_prime == 1
      return number
    end
    return @highest_prime
  end
end
