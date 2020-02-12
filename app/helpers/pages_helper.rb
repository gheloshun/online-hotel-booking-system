module PagesHelper
  def to_currency_php(amount)
    number_to_currency(amount, :unit => "₱", :separator => ".", :delimeter => ",")
  end
end
