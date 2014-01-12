class Property < ActiveRecord::Base
  attr_accessible :content, :page_id, :title
  belongs_to :pages
end
