class SectorsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @sectors = Sector.paginate(:page => params[:page])
    @sector = Sector.new
  end

  def show
    @sector = Sector.find(params[:id])
  end

  def new
    @sector = Sector.new
  end

  def create
    @sector = Sector.new(params[:sector])
    if @sector.save
      redirect_to @sector, :notice => "Successfully created sector."
    else
      render :action => 'new'
    end
  end

  def edit
    @sector = Sector.find(params[:id])
  end

  def update
    @sector = Sector.find(params[:id])
    if @sector.update_attributes(params[:sector])
      redirect_to @sector, :notice  => "Successfully updated sector."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sector = Sector.find(params[:id])
    @sector.destroy
    redirect_to sectors_url, :notice => "Successfully destroyed sector."
  end
end
