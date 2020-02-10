class RoomsController < ApplicationController

  def create
  end

  def show
    @booking = Booking.new
    @room = Room.find(params[:id])
    session[:room_id] = @room.id
  end
end
