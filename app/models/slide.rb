class Slide < ActiveRecord::Base
  attr_accessible :page_id, :image, :hints_attributes, :id
  attr_accessor :accessible
  has_attached_file :image, styles: { thumb: "100x100#", large: "600x300>" } #, path: "/images/#{page_id}/"

  has_many :hints, dependent: :destroy
  accepts_nested_attributes_for :hints, allow_destroy: true
  has_many :lines

  belongs_to :page


end
