class SlsixesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @slsixes = Slsix.paginate(:page => params[:page])
  end

  def show
    @slsix = Slsix.find(params[:id])
  end

  def new
    @slsix = Slsix.new
    @villages = Village.default
    @boat_sizes = BoatSize.default
  end

  def create
    @slsix = Slsix.new(params[:slsix])
    if @slsix.save
      redirect_to @slsix, :notice => "Successfully created slsix."
    else
      render :action => 'new'
    end
  end

  def edit
    @slsix = Slsix.find(params[:id])
    @villages = Village.default
    @boat_sizes = BoatSize.default
  end

  def update
    @slsix = Slsix.find(params[:id])
    if @slsix.update_attributes(params[:slsix])
      redirect_to @slsix, :notice  => "Successfully updated slsix."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @slsix = Slsix.find(params[:id])
    @slsix.destroy
    redirect_to slsixes_url, :notice => "Successfully destroyed slsix."
  end
end
