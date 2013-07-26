class NestedHintsPositions < ActiveRecord::Base
  belongs_to :nested_hint
  belongs_to :position
  # attr_accessible :title, :body
end
