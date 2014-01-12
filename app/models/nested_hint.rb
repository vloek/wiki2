class NestedHint < ActiveRecord::Base
  attr_accessible :hint_id, :x, :y, :width, :height, :x_full, :y_full
  attr_accessible :radius
  belongs_to :hint
end
