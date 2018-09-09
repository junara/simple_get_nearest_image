# frozen_string_literal: true

require 'mini_magick'
require 'numo/narray'
class AnalysedImage
  include MiniMagick
  attr_accessor :numo_array, :filename, :image

  def initialize(file)
    @image = MiniMagick::Image.open(file)
    @numo_array = Numo::DFloat.cast(pixels)
    @filename = file
  end

  def pixels
    @image.get_pixels
  end
end
