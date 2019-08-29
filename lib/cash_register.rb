class CashRegister
  
  attr_accessor :total, :discount, :last_transaction, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @price = price
    if quantity > 1 
      counter = 0 
      while counter < quantity
        @items << title
        counter += 1 
      end
    else
      @items << title 
    end
    self.total += price * quantity
    @last_transaction = self.total
    self.total
  end
  
  def apply_discount
    if @discount > 0 
      @saved = (price * discount)/100
      @total -= @saved
      p "After the discount, the total comes to $#{@total}."
    else
      p "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= @price
    self.total -= @last_transaction
  end
  
  
  
  
end
