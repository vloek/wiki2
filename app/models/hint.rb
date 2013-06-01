class Hint < ActiveRecord::Base
  attr_accessible :content, :title, :x, :y, :slide_id, :id
  belongs_to :slide
  has_many :nested_hints
end
