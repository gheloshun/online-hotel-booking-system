module RoomsHelper

  def to_two_decimal(amount)
    number_with_precision(amount, precision: 2)
  end

  def to_currency_php(amount)
    number_to_currency(amount, :unit => "₱", :separator => ".", :delimeter => ",")
  end

  def count_max_capacity
    @room = Room.find(params[:id])
    arr = []
    (1..@room.max_capacity).each do |i|
      arr.push(i)
    end
    return arr
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
    @bookings = Booking.where(room_id: session[:room_id], upload_bank_slip: true)
    #@bookings = Booking.where(room_id: session[:room_id], paid: true)
    @bookings.each do |book|
      diff_days = ((book.check_out - book.check_in).to_i)
      orig_date = book.check_in
      diff_days.times do
        blocked_dates.push(orig_date.strftime("%Y-%m-%d"))
        orig_date = orig_date + 1.day
      end
    end
    return blocked_dates
  end

end
