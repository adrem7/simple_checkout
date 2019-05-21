class Checkout

  attr_reader :subtotal

  def initialize
    @subtotal = 0
  end

  def scan(item)
    @subtotal += item.price
  end

  def shop_cost
    puts "Total: £%.2f" % @subtotal.to_s
  end
end
