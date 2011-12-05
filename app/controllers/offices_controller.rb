class OfficesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @offices = Office.paginate(:page => params[:page])
    @office = Office.new
    @sdistricts = Sdistrict.default
  end

  def show
    @office = Office.find(params[:id])
  end

  def new
    @office = Office.new
    @sdistricts = Sdistrict.default
  end

  def create
    @office = Office.new(params[:office])
    if @office.save
      redirect_to @office, :notice => "Successfully created office."
    else
      render :action => 'new'
    end
  end

  def edit
    @office = Office.find(params[:id])
    @sdistricts = Sdistrict.default
  end

  def update
    @office = Office.find(params[:id])
    if @office.update_attributes(params[:office])
      redirect_to @office, :notice  => "Successfully updated office."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @office = Office.find(params[:id])
    @office.destroy
    redirect_to offices_url, :notice => "Successfully destroyed office."
  end
end
