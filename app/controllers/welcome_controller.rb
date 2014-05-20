class WelcomeController < ApplicationController
  
  skip_before_filter :authenticate_user!
  layout :false
  
  def index
#    if user_signed_in?
#      redirect_to :tweets
#    end
  end
  
end
