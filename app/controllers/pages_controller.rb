class PagesController < ApplicationController

  def index
    @rooms = Room.where(published: true).first(6)
  end

  def rooms
    @rooms = Room.where(published: true).paginate(page: params[:page], per_page: 9)
  end

end
