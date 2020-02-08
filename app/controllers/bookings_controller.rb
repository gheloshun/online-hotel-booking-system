class BookingsController < ApplicationController
  before_action :user_signed_in, only: [:create, :destroy]

  def new
    
  end

  private

    def booking_params
      params.require(:booking).permit(:date, :time_in, :time_out, :total_bill, :user_id. :room_id)
    end

end
