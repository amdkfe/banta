class RoomsController < ApplicationController

  def index 
    @rooms = Room.all
    
  end

  # def create

  # end

  # def show

  # end

end
