class StoreController < ApplicationController
  
  def index
    @products = Product.order(:title)
    @session_count = session_counter
  end
  
  
  #private methods
  private
  
  def session_counter
    if session[:counter].nil? 
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    
  end
  
end
