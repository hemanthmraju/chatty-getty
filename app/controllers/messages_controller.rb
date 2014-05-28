class MessagesController < ApplicationController
  
  def create
    @channel = Channel.find(params[:message][:channel_id])
    @channel.users << current_user
    @channel.save
  	@message = Message.new(params[:message])
    if @message.save
      render :partial => "/shared/messages",:locals=>{:message=>@message,:channel=>@channel}
    end  

  end
  
  def show
     @channel=current_user.channels.uniq 
  end

  def read
  end

  def update
  end

  def delete
  end
end
