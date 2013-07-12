class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product
  
  #relations
  belongs_to :product
  belongs_to :cart
end
