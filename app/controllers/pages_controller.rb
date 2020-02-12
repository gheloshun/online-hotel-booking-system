class PagesController < ApplicationController

  def index
    @rooms = Room.where(published: true).first(6)
  end

  def rooms
    @rooms = Room.where(published: true)
  end

end
