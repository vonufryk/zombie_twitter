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
    if @tweet.save
      redirect_to :action =>'index'
    else
      redirect_to :action => 'new'
    end
  end
  
  private
  
  def tweet_params(params)
    params.require(:tweet).permit([:status, :text])    
  end
end
