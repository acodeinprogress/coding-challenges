module Uniques

  def self.cleanup(array)
    duplicate_free_arr = []
    array.each do |item|
      if !duplicate_free_arr.include?(item)
        duplicate_free_arr << item
      end
    end
    return duplicate_free_arr
  end

end
