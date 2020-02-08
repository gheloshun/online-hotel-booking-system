class RoomsController < ApplicationController

  def create

  end

  def show
    @booking = Booking.new
    @room = Room.find(params[:id])
  end
end
