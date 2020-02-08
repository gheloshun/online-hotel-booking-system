module RoomsHelper

  def number_to_currency_php(amount)
    number_to_currency(amount, :unit => "₱ ", :separator => ".", :delimiter => ",")
  end

end
