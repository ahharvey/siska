class DistrictsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @districts = District.paginate(:page => params[:page])
    @district = District.new
    @provinces = Province.default
  end

  def show
    @district = District.find(params[:id])
  end

  def new
    @district = District.new
    @provinces = Province.default
  end

  def create
    @district = District.new(params[:district])
    if @district.save
      redirect_to @district, :notice => "Successfully created district."
    else
      render :action => 'new'
    end
  end

  def edit
    @district = District.find(params[:id])
    @provinces = Province.default
  end

  def update
    @district = District.find(params[:id])
    if @district.update_attributes(params[:district])
      redirect_to @district, :notice  => "Successfully updated district."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @district = District.find(params[:id])
    @district.destroy
    redirect_to districts_url, :notice => "Successfully destroyed district."
  end
end
