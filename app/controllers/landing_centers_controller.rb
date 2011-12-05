class LandingCentersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @landing_centers = LandingCenter.paginate(:page => params[:page])
    @landing_center = LandingCenter.new
  end

  def show
    @landing_center = LandingCenter.find(params[:id])
  end

  def new
    @landing_center = LandingCenter.new
  end

  def create
    @landing_center = LandingCenter.new(params[:landing_center])
    if @landing_center.save
      redirect_to @landing_center, :notice => "Successfully created landing center."
    else
      render :action => 'new'
    end
  end

  def edit
    @landing_center = LandingCenter.find(params[:id])
  end

  def update
    @landing_center = LandingCenter.find(params[:id])
    if @landing_center.update_attributes(params[:landing_center])
      redirect_to @landing_center, :notice  => "Successfully updated landing center."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @landing_center = LandingCenter.find(params[:id])
    @landing_center.destroy
    redirect_to landing_centers_url, :notice => "Successfully destroyed landing center."
  end
end
