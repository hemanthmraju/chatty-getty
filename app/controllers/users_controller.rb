class UsersController < ApplicationController
  
  def profile
  
  end

  def profile_update
   if @profile=current_user.user_detail
      @profile.update_attributes(params[:user_detail])    
   else
      @profile=current_user.build_user_detail(params[:user_detail])
      @profile.save!
   end
redirect_to :back
end

end
