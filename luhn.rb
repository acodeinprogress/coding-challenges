require 'minitest/autorun'

module Luhn
  def self.is_valid?(number)
    digits = number.to_s.split('')
    i = 1
    total = 0
    while digits.length > 0
      digit = digits.pop.to_i
      if i % 2 == 0
        digit *= 2
        if digit >= 10
          digit -= 9
        end
      end
      total += digit
      i += 1
    end
    puts total
    if total % 10 == 0
      return true
    end
    return false
  end
end

class TestLuhn < MiniTest::Unit::TestCase

  def test_luhn_valid
    assert Luhn.is_valid?(4194560385008504)
  end

  def test_luhn_invalid
    assert ! Luhn.is_valid?(4194560385008505)
  end

end
