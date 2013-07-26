class Page < ActiveRecord::Base
  serialize :related_pages, Array
	
  attr_accessible :content, :parent_id, :show_in_menu, :title, :color, :slide, :title_full_name,:full_name,:count_update_title,:count_update,:semantic_load_title,:semantic_load,:measure_title,:measure,:analitic_cuts_title,:analitic_cuts,:source_recived_title,:source_recived,:formula_title,:formula, :related_pages
  attr_accessible :city_agregation, :region, :cust, :filial, :properties_attributes, :slides_attributes, :slider, :another_color

  # Relations
  has_many   :children, class_name: 'Page', foreign_key: 'parent_id'
  has_attached_file :slide, :styles => { :medium => "600x300>", :thumb => "200x100>", normative_prev: '214x128' }, :default_url => "/assets/missed.jpg"
  belongs_to :parent,   class_name: 'Page'

  has_many :properties, dependent: :destroy
  accepts_nested_attributes_for :properties, allow_destroy: true

  has_many :slides, dependent: :destroy
  accepts_nested_attributes_for :slides, allow_destroy: true

end
