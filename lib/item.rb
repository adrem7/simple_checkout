class Item

  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def check_price
    puts "Price: £%.2f" % @price.to_s
  end
end
