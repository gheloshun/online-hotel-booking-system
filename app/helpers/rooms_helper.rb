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

  def get_room_cleaning_fee

  end

  def get_room_service_fee
    @room = Room.find(current_room.id)
    return @room.service_fee
  end

  def compute_total
    @room = Room.find(current_room.id)
    room_rate = @room.room_rate
    service_fee = @room.service_fee
    cleaning_fee = @room.cleaning_fee
    return room_rate + service_fee + cleaning_fee
  end

  def current_room
    return Room.find(session[:room_id])
  end

  def get_blocked_date
    blocked_dates = []
    @booking = Booking.all
    @booking.each do |book|
      blocked_dates.push(book.check_in)
      blocked_dates.push(book.check_out)
    end
    return blocked_dates
  end

end
