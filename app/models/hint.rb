class Hint < ActiveRecord::Base
  attr_accessible :content, :title, :x, :y, :slide_id, :id, :width, :height, :x_full, :y_full
  belongs_to :slide
  has_many :nested_hints
end


class Triangle
  attr :a, :b
  
  def place
    (a * b) / 2
  end
end