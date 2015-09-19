def image_blur(multi_arr)
  blurred_arr = multi_arr.map { |arr| arr.clone }

  multi_arr.each_with_index { |arr, multi_index|
    arr.each_with_index { |item, arr_index| 
      if arr_index == 0 and item == 1
        blurred_arr[multi_index][arr_index + 1] = 1
      elsif arr_index == arr.length - 1 and item == 1
        blurred_arr[multi_index][arr_index - 1] = 1
      elsif item == 1
        blurred_arr[multi_index][arr_index - 1] = 1
        blurred_arr[multi_index][arr_index + 1] = 1
      end

      if multi_index == 0 and item == 1
        blurred_arr[multi_index + 1][arr_index] = 1
      elsif multi_index == multi_arr.length - 1 and item == 1
        blurred_arr[multi_index - 1][arr_index] = 1
      elsif item == 1
        blurred_arr[multi_index - 1][arr_index] = 1
        blurred_arr[multi_index + 1][arr_index] = 1
      end
    }
  }
  blurred_arr.each do |arr|
    print "#{arr}  \n"
  end
end


image_blur([[0, 1, 0],[1, 0, 0], [0, 0, 1], [0, 0, 0]])
