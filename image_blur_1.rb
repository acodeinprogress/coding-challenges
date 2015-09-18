class Image
  def initialize(img_arr)
    @img_arr = img_arr
  end

  def output_image
    pixels = ''
    @img_arr.each do |arr|
      arr.each do |pixel|
        pixels += pixel.to_s
      end
      puts pixels
      pixels = ''
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image


