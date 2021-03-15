class Checkout

  def checkout(item)
    items = {
      'A' => 50,
      'B' => 30,
      'C' => 20,
      'D' => 15
    }
    receipt = 0

    order= item.split('')

    order.each do |i|
      receipt += items[i]
    end
    return receipt
  end

end
