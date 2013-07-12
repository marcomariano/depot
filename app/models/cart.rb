class Cart < ActiveRecord::Base
   attr_accessible :product_id, :cart_id
   
  #=======================================================
  
  #relations
  
  has_many :line_items, dependent: :destroy  
  
  #====================================================
  
end
