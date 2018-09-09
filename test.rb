# frozen_string_literal: true

require './nearest_image'

result = NearestImage.execute('images/mnist1.png', 'selected', 10)

result.each do |r|
  p r
end
