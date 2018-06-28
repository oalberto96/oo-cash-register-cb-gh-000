
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction_total

  def initialize(employee_discount = 0)
    @total = 0
    @last_transaction_total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(name, price, quantity = 1)
    quantity.times { @items << name }
    @last_transaction_total = price * quantity
    @total += @last_transaction_total
  end

  def apply_discount
    if @discount != 0
      @total = total - (discount * total)/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction_total
  end



end
