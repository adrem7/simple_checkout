require 'checkout'

describe 'checkout' do
  let(:checkout)  { Checkout.new }
  let(:item)      { double(:item, :price => 5) }

  it 'should respond to checkout class' do
    expect(checkout).to be_a_kind_of(Checkout)
  end

  it 'should have a running total cost of my shop' do
    expect(checkout).to respond_to(:subtotal)
  end

  it 'should increase my running total as I scan' do
    5.times { checkout.scan(item) }
    expect { checkout.shop_cost }.to output("Total: £25.00\n").to_stdout
  end
end
