class CashRegister
  
  attr_accessor :total, :cart, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end 
  
  def total
    @total
  end
  
  def add_item(item_name, item_price, item_quantity = 1)
    item_quantity.times {self.cart << item_name}
    self.total += item_price * item_quantity
  end 
  
  def apply_discount
    if self.discount <=0 
      "There is no discount to apply."
    elsif @total != 0 
      self.total = self.total / @discount 
    end 
    
  end 
  
  def items
    @cart
  end 
  
  def void_last_transaction
    @cart.pop
  end 
  
end
