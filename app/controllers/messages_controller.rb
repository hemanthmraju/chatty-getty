class MessagesController < ApplicationController
  
  def create
    @channel = Channel.find(params[:message][:channel_id])
    @channel.users << current_user
    @channel.save
  	@message = Message.new(params[:message])
    if @message.save
      render :partial => "/shared/messages"
    end  

  end

  def read
  end

  def update
  end

  def delete
  end
end
