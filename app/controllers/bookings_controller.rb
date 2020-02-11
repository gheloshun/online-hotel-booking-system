class BookingsController < ApplicationController

  def new
  end

  def create
    params[:booking][:user_id] = current_user.id
    params[:booking][:room_id] = session[:room_id]
    @booking = Booking.create!(booking_params)
    if @booking.save

    else
      render 'rooms/show'
    end
  end

  private

    def booking_params
      params.require(:booking).permit(:check_in, :check_out,
                                      :number_of_guest, :total_bill,
                                      :user_id, :room_id, :total_bill, 
                                      :confirmed, :paid,
                                      :number_of_night, :cleaning_fee,
                                      :service_fee, :sub_total, :room_rate)
    end

end
