require 'checkout'

describe Checkout do

  let(:shop) { described_class.new }

  it "gives a total when an item is scanned" do
    expect(shop.checkout('A')).to eq 50
  end
end
