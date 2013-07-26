class HintsPositions < ActiveRecord::Base
  belongs_to :hint
  belongs_to :position
  # attr_accessible :title, :body
end
