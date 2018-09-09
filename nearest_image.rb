# frozen_string_literal: true

require './analysed_image'
require 'numo/narray'

module NearestImage
  module_function

  def execute(target_file, dir, top = 10)
    data_array = calc_length(target_file, dir)
    data_array.sort_by { |b| b[:length] }[0..(top - 1)]
  end

  def calc_length(target_file, dir)
    ary = []
    Dir.glob("#{dir}/**/*") do |item|
      target_image = AnalysedImage.new(target_file)
      reference_image = AnalysedImage.new(item)
      temp_data_params = data_params(target_image, reference_image)
      ary << temp_data_params
    end
    ary
  end

  def data_params(target_image, reference_image)
    { file: reference_image.filename, length: length(target_image.numo_array, reference_image.numo_array) }
  end

  def diff_abs(array1, array2)
    (array1 - array2).abs
  end

  def length(array1, array2)
    diff_abs(array1, array2).sum
  end
end
