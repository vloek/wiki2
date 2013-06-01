class NestedHint < ActiveRecord::Base
  attr_accessible :hint_id, :x, :y, :width, :height

  belongs_to :hint
end
