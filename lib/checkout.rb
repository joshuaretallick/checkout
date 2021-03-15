class Checkout

  def checkout(items)
    # Checks input is actually a String
    return -1 unless items.kind_of? String
    # Checks input if Capitalized or contains any digits
    return -1 if items != items.upcase || items =~ /\d/
    # start running total
    @cost = 0
    # Calls calc method with chars parameter which takes string and inputs as Array
    calc(items.chars)
    # Calls special_offer methos with chars
    special_offer(items.chars)
    # Calls @cost for final total
    @cost
  end

  # These methods dont affect the user experience as they dont call them directly
  private

  def special_offer(items)
    # Removes 20 from running total ('AAA' = 3, so 20 * (3 / 3) or 20 * 1)
    @cost -= 20 * (items.count('A') / 3)
    # Removes 15 from running total ('BB' = 2, so 15 * (2 / 2) or 15 * 1)
    @cost -= 15 * (items.count('B') / 2)
  end

  def calc(items)
    # Once called iterates over the order and then calculates each item based on case
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
