require 'checkout'

describe Checkout do

  let(:shop) { described_class.new }

  it "gives a total when an item is scanned" do
    expect(shop.checkout('A')).to eq 50
  end

  it "gives a total when two items are scanned" do
    expect(shop.checkout('AB')).to eq 80
  end

  it "Considers lowercase inouts when processing an order" do
    expect(shop.checkout('abcd')).to eq 115
  end

end
