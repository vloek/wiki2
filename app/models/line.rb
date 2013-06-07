class Line < ActiveRecord::Base
  attr_accessible :bottom, :height, :left, :right, :slide_id, :top, :width, :x, :y
  belongs_to :slide
end
