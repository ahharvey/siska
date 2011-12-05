class BoatSizesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @boat_sizes = BoatSize.paginate(:page => params[:page])
    @boat_size = BoatSize.new
  end

  def show
    @boat_size = BoatSize.find(params[:id])
  end

  def new
    @boat_size = BoatSize.new
  end

  def create
    @boat_size = BoatSize.new(params[:boat_size])
    if @boat_size.save
      redirect_to @boat_size, :notice => "Successfully created boat size."
    else
      render :action => 'new'
    end
  end

  def edit
    @boat_size = BoatSize.find(params[:id])
  end

  def update
    @boat_size = BoatSize.find(params[:id])
    if @boat_size.update_attributes(params[:boat_size])
      redirect_to @boat_size, :notice  => "Successfully updated boat size."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @boat_size = BoatSize.find(params[:id])
    @boat_size.destroy
    redirect_to boat_sizes_url, :notice => "Successfully destroyed boat size."
  end
end
