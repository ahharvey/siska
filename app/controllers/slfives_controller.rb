class SlfivesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @slfives = Slfive.paginate(:page => params[:page])
  end

  def show
    @slfive = Slfive.find(params[:id])
  end

  def new
    @slfive = Slfive.new
    @gears = Gear.default
    @landingcenters = LandingCenter.default
  end

  def create
    @slfive = Slfive.new(params[:slfive])
    if @slfive.save
      redirect_to @slfive, :notice => "Successfully created slfive."
    else
      render :action => 'new'
    end
  end

  def edit
    @slfive = Slfive.find(params[:id])
    @gears = Gear.default
    @landingcenters = LandingCenter.default
  end

  def update
    @slfive = Slfive.find(params[:id])
    if @slfive.update_attributes(params[:slfive])
      redirect_to @slfive, :notice  => "Successfully updated slfive."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @slfive = Slfive.find(params[:id])
    @slfive.destroy
    redirect_to slfives_url, :notice => "Successfully destroyed slfive."
  end
end
