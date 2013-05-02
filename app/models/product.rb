class Product < ActiveRecord::Base
  attr_accessible :prod_id
  attr_accessible :product_name
  attr_accessible :prod_decription
  attr_accessible :prod_price
  attr_accessible :prod_image
  
  validates_presence_of :product_name, :prod_decription, :prod_image
  validates_numericality_of :prod_id, :prod_price
  
  validates_uniqueness_of :prod_id
  validates_uniqueness_of :product_name
  validates_format_of :prod_image,
     :with => %r{\.(gif|jpg|png)$}i,
     :message => 'must be a URL for GIF, JPG ' +
     'or PNG image.'
  
  
end
