class FishController < ApplicationController
  before_filter :authenticate_user!
  def index
    @fishes = Fish.paginate(:page => params[:page])
    @fish = Fish.new
    @sectors = Sector.default
    @waters = Water.default
    @categories = Category.default
    @statuses = Status.default
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def new
    @fish = Fish.new
    @sectors = Sector.default
    @waters = Water.default
    @categories = Category.default
    @statuses = Status.default
  end

  def create
    @fish = Fish.new(params[:fish])
    if @fish.save
      redirect_to @fish, :notice => "Successfully created fish."
    else
      render :action => 'new'
    end
  end

  def edit
    @fish = Fish.find(params[:id])
    @sectors = Sector.default
    @waters = Water.default
    @categories = Category.default
    @statuses = Status.default
  end

  def update
    @fish = Fish.find(params[:id])
    if @fish.update_attributes(params[:fish])
      redirect_to @fish, :notice  => "Successfully updated fish."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy
    redirect_to fish_url, :notice => "Successfully destroyed fish."
  end
end
