class WelcomeController < ApplicationController
	before_filter :authenticate_user!
  
  def index
  	@channels = Channel.all
  	#@users = User.last(2)
  	@chat_room = Channel.new
  	@online_users = User.where('current_sign_in_at > ?' , Time.zone.now-10.minutes)
  end
end
