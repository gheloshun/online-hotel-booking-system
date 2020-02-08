module RoomsHelper

  def number_to_currency_php(amount)
    number_to_currency(amount, :unit => "₱ ", :separator => ".", :delimiter => ",")
  end

  def count_max_capacity
    @room = Room.find(params[:id])
    arr = []
    (1..@room.max_capacity).each do |i|
      arr.push(i)
    end
    return arr
  end

end
