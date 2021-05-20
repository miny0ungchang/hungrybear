module ApplicationHelper
  def humanized_price(cents)
    array_cents = cents.digits.reverse
    last = array_cents.pop
    before_last = array_cents.pop
    array_cents.join.to_s + '.' + before_last.to_s + last.to_s + " $"
  end
end
