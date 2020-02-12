class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @bookings = Booking.where(user_id: current_user.id, confirmed: true, upload_bank_slip: false)
    session[:booking_action] = "Paying"
  end

end
