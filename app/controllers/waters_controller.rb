class WatersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @waters = Water.paginate(:page => params[:page])
    @water = Water.new
  end

  def show
    @water = Water.find(params[:id])
  end

  def new
    @water = Water.new
  end

  def create
    @water = Water.new(params[:water])
    if @water.save
      redirect_to @water, :notice => "Successfully created water."
    else
      render :action => 'new'
    end
  end

  def edit
    @water = Water.find(params[:id])
  end

  def update
    @water = Water.find(params[:id])
    if @water.update_attributes(params[:water])
      redirect_to @water, :notice  => "Successfully updated water."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @water = Water.find(params[:id])
    @water.destroy
    redirect_to waters_url, :notice => "Successfully destroyed water."
  end
end
