class LinesPositions < ActiveRecord::Base
  belongs_to :line
  belongs_to :position
  # attr_accessible :title, :body
end
