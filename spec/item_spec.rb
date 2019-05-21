require 'item'

describe 'item' do
  let(:item) { Item.new("Cheese", 5) }

  it ' should respond to item class' do
    expect(item).to be_a_kind_of(Item)
  end

  it 'should have a variable name' do
    expect(item.name).to eq("Cheese")
  end

  it 'should have a variable price' do
    expect(item.price).to eq(5)
  end

  it 'should have correctly formatted prices for items' do
    expect{ item.check_price }.to output("Price: £5.00\n").to_stdout
  end
end
