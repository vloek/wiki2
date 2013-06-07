class NestedHint < ActiveRecord::Base
  attr_accessible :hint_id, :x, :y, :width, :height
  attr_accessible :radius
  belongs_to :hint
end
