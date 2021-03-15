class Checkout

  def checkout(items)
    return -1 unless items.kind_of? String
    return -1 if items != items.upcase || items =~ /\d/
    @cost = 0
    calc(items.chars)
    special_offer(items.chars)
    @cost
  end

  private

  def special_offer(items)
    @cost -= 20 * (items.count('A') / 3)
    @cost -= 15 * (items.count('B') / 2)
  end

  def calc(items)
    items.each do |item|
      @cost += case item
      when 'A'
        50
      when 'B'
        30
      when 'C'
        20
      when'D'
        15
      end
    end
  end

end
