class UsersController < ApplicationController
  
  def profile
   @user = current_user
   @user_detail = current_user.user_detail
  end

  
end
