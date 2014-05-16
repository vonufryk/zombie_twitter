class ZombiesController < ApplicationController
  
  def show
    @zombie = Zombie.find(params[:id])
  end
  
  def index
    
  end

  def new
    @zombie = Zombie.new
  end

  def create
    @zombie = Zombie.create(name: params[:name], home: params[:home])
    if @zombie.save
      redirect_to @zombie
    else
      render new
    end
  end
  
  def destroy
    @zombie = Zombie.find(params[:id])
    @zombie.destroy
    #if @zombie
    #  @zombie.destroy
    #  redirect_to 'zombies'
    #else      
    #  redirect_to 'new'
    #end
    redirect_to 'index'
  end
  
end