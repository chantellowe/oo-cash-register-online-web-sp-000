class CashRegister
  
  attr_accessor :total, :discount, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @price = price
    self.total += price * quantity
  end
  
  def apply_discount
    if @discount > 0 
      @saved = (price * discount)/100
      @total -= @saved
      puts "After the discount, the total comes to $#{@total}."
    end
  end
  
  
  
  
end
