class UsersController < ApplicationController

  def tweets
    @user = User.find(params[:id])    
  end
  
end
