class PagesController < ApplicationController

  def index
  end

  def rooms
    @rooms = Room.all
  end

end
