class Image
  def initialize(img_arr)
    @img_arr = img_arr
  end

  def output_image
    @img_arr.each do |arr|
      print "#{arr}  \n"
    end
  end

  def blur(distance)
    blurred_arr = @img_arr.map { |arr| arr.clone }

    (1..distance).each do 
      @img_arr.each_with_index do |arr, multi_index|
        arr.each_with_index do |item, arr_index| 
          blurred_arr[multi_index][arr_index + 1] = 1 if 
            arr_index != arr.length - 1 && item == 1
          blurred_arr[multi_index][arr_index - 1] = 1 if 
            arr_index != 0 && item == 1
          blurred_arr[multi_index - 1][arr_index] = 1 if 
            multi_index != 0 && item == 1
          blurred_arr[multi_index + 1][arr_index] = 1 if 
            multi_index != @img_arr.length - 1 && item == 1
        end
      end
      @img_arr = blurred_arr.map { |arr| arr.clone }
    end
    return @img_arr
  end
end

image = Image.new([
               [0, 0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 1, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 0], 
               [0, 0, 0, 0, 0, 0, 0, 0, 1]
              ])
image.blur(3)
image.output_image
