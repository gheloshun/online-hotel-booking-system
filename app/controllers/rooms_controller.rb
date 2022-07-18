class RoomsController < ApplicationController

  def create
  end

  def show
    @booking = Booking.new
    @room = Room.find(params[:id])
    @room_class = RoomClass.find(@room.room_class_id)
    @ammenities = Ammenity.find(@room_class.ammenity_id)
    session[:room_id] = @room.id
  end


end
