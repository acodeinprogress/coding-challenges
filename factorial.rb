module Factorial

  def self.of(number)
    if number.nil?
      return nil
    end
    factorial = 1
    (1..number).each do |num|
      factorial *= num
    end
    return factorial
  end


end
