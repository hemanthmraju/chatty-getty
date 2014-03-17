class ChannelsController < ApplicationController
  
  def create
  	@channel = Channel.new(params[:channel])
  	@channel.users << current_user
  	@channel.save 
  	
  end

  def show
  	@channel = Channel.find(params[:id])
  	@message = Message.new
  end

  def read
  end

  def update
  end

  def delete
  end
end
