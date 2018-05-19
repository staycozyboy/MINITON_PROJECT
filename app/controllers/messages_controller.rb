class MessagesController < ApplicationController

  def new
    @sended = User.find(params[:user_id])
  end

  def create
    @message=Message.new
    @message.sended_id=params[:sended_id]
    @message.sender_id=params[:sender_id]
    @message.content = params[:content]
    @message.save

    redirect_to '/messagebox'
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to :back
  end
end
