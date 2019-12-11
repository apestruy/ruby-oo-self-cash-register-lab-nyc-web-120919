class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title = title 
    @price = price 
    @quantity = quantity
  end 
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end 
  
  def apply_discount
    @total -= (total * discount / 100.00)
  end 
  
  
  
  
end 
