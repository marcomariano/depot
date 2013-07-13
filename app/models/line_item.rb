class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :quantity
  before_validation :quantitizer
  
  def quantitizer
    self.quantity ||= 1    
  end
  
  
  #relations
  belongs_to :product
  belongs_to :cart
end
