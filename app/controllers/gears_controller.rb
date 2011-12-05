class GearsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @gears = Gear.paginate(:page => params[:page])
    @gear = Gear.new
    @gearcategories = GearCategory.default
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def new
    @gear = Gear.new
    @gearcategories = GearCategory.default
  end

  def create
    @gear = Gear.new(params[:gear])
    if @gear.save
      redirect_to @gear, :notice => "Successfully created gear."
    else
      render :action => 'new'
    end
  end

  def edit
    @gear = Gear.find(params[:id])
  end

  def update
    @gear = Gear.find(params[:id])
    if @gear.update_attributes(params[:gear])
      redirect_to @gear, :notice  => "Successfully updated gear."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy
    redirect_to gears_url, :notice => "Successfully destroyed gear."
  end
end
