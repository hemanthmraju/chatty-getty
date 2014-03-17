class WelcomeController < ApplicationController
	before_filter :authenticate_user!
  
  def index
  	@channels = Channel.all
  	@users = User.last(2)
  	@chat_room = Channel.new
  end
end
