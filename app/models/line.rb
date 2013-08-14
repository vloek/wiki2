class Line < ActiveRecord::Base
  attr_accessible :bottom, :height, :left, :right, :slide_id, :top, :width, :x, :y, :x_full, :y_full, :widths, :heights
  belongs_to :slide
  serialize :widths, Hash
  serialize :heights, Hash
end
