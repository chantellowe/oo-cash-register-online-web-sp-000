class CashRegister
  
  attr_accessor :total, :discount, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    #@cart = []
  end
  
  def add_item(title, price, quantity = 1)
    #@price = price
    self.total += price * quantity
    
  end
  
  
  
  
end
