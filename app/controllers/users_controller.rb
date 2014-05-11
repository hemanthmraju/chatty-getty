class UsersController < ApplicationController
  
  def profile
  
  end

  def profile_update
   p params
   u = current_user.user_detail ? current_user.user_detail : current_user.build_user_detail
   # u = params[:user_detail]
   # u.save!
  end

  
end
