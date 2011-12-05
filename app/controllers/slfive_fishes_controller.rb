class SlfiveFishesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @slfive_fishes = SlfiveFish.paginate(:page => params[:page])
  end

  def show
    @slfive_fish = SlfiveFish.find(params[:id])
  end

  def new
    @slfive_fish = SlfiveFish.new
  end

  def create
    @slfive_fish = SlfiveFish.new(params[:slfive_fish])
    if @slfive_fish.save
      redirect_to @slfive_fish, :notice => "Successfully created slfive fish."
    else
      render :action => 'new'
    end
  end

  def edit
    @slfive_fish = SlfiveFish.find(params[:id])
  end

  def update
    @slfive_fish = SlfiveFish.find(params[:id])
    if @slfive_fish.update_attributes(params[:slfive_fish])
      redirect_to @slfive_fish, :notice  => "Successfully updated slfive fish."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @slfive_fish = SlfiveFish.find(params[:id])
    @slfive_fish.destroy
    redirect_to slfive_fishes_url, :notice => "Successfully destroyed slfive fish."
  end
end
