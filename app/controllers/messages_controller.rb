class MessagesController < ApplicationController

 before_action :get_messages

  def index

  end

  def new
    @message = Message.new
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.build(content: params[:content], user: current_user)
    if @message.save
      flash[:success] = "message sent"
      redirect_to room_path(@room)
    else
      p 'not saved'
       redirect_to room_path(@room)
    end

end




private

    def get_messages
      @messages = Message.all
      @message  = current_user.messages.new
    end

  def message_params
    params.require(:message).permit(:content)
  end

end
