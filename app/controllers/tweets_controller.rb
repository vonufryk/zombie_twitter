class TweetsController < ApplicationController

  def index    
  end
  
  def show
    @zombie = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params(params))
    @tweet.user_id = current_user.id
    if @tweet.save
      redirect_to :action =>'index', :notice => "Successfully created tweet."
    else
      render :action => 'new', :notice => "Something is wrong while creating tweet."
    end
  end
  
  private
  
  def tweet_params(params)
    params.require(:tweet).permit([:status, :text, :user_id])    
  end
end
