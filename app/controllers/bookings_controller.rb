class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if session[:booking_action] == "Paying"
      @booking = Booking.find(session[:book_id])
      @booking.update_attribute(:upload_bank_slip, true)
      @booking.update_attribute(:status, "Pending")
      @booking.images.attach(params[:booking][:images])
      flash[:success] = "Thank you for choosing us.  Please wait for the hotel itenerary from our administrator."
      redirect_to current_user
    else
      @booking = Booking.find(params[:id])
      @booking.update_attribute(:confirmed, true)
      @booking.update_attribute(:status, "Unpaid")
      flash[:success] = "The selected dates are temporarily blocked. To secure your booking please settle the payment until tommorrow."
      redirect_to current_user
    end

  end

  def create
    params[:booking][:user_id] = current_user.id
    params[:booking][:room_id] = session[:room_id]
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to @booking
    else
      flash[:session] = "* Please select a proper date"
      redirect_to room_path(session[:room_id])
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @room = Room.find(@booking.room_id)
    session[:booking_action] = "Booking"
  end

  private

    def booking_params
      params.require(:booking).permit(:check_in, :check_out,
                                      :number_of_guest, :total_bill,
                                      :user_id, :room_id, :total_bill,
                                      :confirmed, :upload_bank_slip,
                                      :number_of_night, :cleaning_fee,
                                      :service_fee, :sub_total, :room_rate, :status,
                                      images: [])


    end
end
