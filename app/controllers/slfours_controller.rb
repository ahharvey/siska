class SlfoursController < ApplicationController
  before_filter :authenticate_user!
  def index
    @slfours = Slfour.paginate(:page => params[:page])
  end

  def show
    @slfour = Slfour.find(params[:id])
  end

  def new
    @slfour = Slfour.new
    @landingcenters = LandingCenter.default
    @gears = Gear.default
    @boatsizes = BoatSize.default
  end

  def create
    @slfour = Slfour.new(params[:slfour])
    if @slfour.save
      redirect_to @slfour, :notice => "Successfully created slfour."
    else
      render :action => 'new'
    end
  end

  def edit
    @slfour = Slfour.find(params[:id])
    @landingcenters = LandingCenter.default
    @gears = Gear.default
    @boatsizes = BoatSize.default
  end

  def update
    @slfour = Slfour.find(params[:id])
    if @slfour.update_attributes(params[:slfour])
      redirect_to @slfour, :notice  => "Successfully updated slfour."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @slfour = Slfour.find(params[:id])
    @slfour.destroy
    redirect_to slfours_url, :notice => "Successfully destroyed slfour."
  end
end
