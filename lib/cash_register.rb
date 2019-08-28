class CashRegister
  
  attr_accessor :total
  
  def initialize(total = 0)
    @total = total
  end
  
  def discount
    total - (total * 0.2) 
  end
  
  
  
  
end
