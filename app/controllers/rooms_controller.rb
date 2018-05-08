class RoomsController < ApplicationController

  def index 
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @user = current_user
    @messages = @room.messages.all
  end

end
