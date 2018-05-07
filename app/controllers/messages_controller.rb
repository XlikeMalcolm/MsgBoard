class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(message_params)
  	if @message.save
  		redirect_to root_url
  		flash[:notice] = "Message was successfully posted."
  	else
  		render :new
  		flash[:alert] = "Failed to post your message."
  	end
  end

  private

  def message_params
  	params.require(:message).permit(:content)
  end

end
