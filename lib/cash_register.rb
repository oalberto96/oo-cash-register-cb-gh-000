
class CashRegister
  attr_accessor :total, :discount

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = {}
  end

  def add_item(name, price, quantity = 1)
    @items[name] = price * quantity
    @total += price * quantity
  end

  def apply_discount
  end


end
