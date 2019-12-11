class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, 
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title = title 
    @price = price 
    @quantity = quantity
    @items = []
    @last_item = []
  end 
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @last_item << price
    i = quantity
    until i == 0 do 
    @items << title
    i -= 1 
    end 
  end 
  
  def apply_discount
    if discount > 0 
    @total -= (total * discount / 100)
    return "After the discount, the total comes to $#{@total}."
    end 
    if discount = 0 
      return "There is no discount to apply."
    end 
  end 
  
  def items 
   @items 
  end 
  
  def void_last_transaction
    total -= @last_item
  end 
end 
