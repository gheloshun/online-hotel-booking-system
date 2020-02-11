class BookingsController < ApplicationController

  def new
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update_attribute(:confirmed, true)
    flash[:success] = "The selected dates are temporarily blocked. To secure your booking please settle the payment until tommorrow."
    redirect_to root_path
  end

  def create
    params[:booking][:user_id] = current_user.id
    params[:booking][:room_id] = session[:room_id]
    @booking = Booking.create!(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render 'rooms/show'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @room = Room.find(@booking.room_id)
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
