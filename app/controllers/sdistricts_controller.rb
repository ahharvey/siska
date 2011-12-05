class SdistrictsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @sdistricts = Sdistrict.paginate(:page => params[:page])
    @sdistrict = Sdistrict.new
  end

  def show
    @sdistrict = Sdistrict.find(params[:id])
  end

  def new
    @sdistrict = Sdistrict.new
  end

  def create
    @sdistrict = Sdistrict.new(params[:sdistrict])
    if @sdistrict.save
      redirect_to @sdistrict, :notice => "Successfully created sdistrict."
    else
      render :action => 'new'
    end
  end

  def edit
    @sdistrict = Sdistrict.find(params[:id])
  end

  def update
    @sdistrict = Sdistrict.find(params[:id])
    if @sdistrict.update_attributes(params[:sdistrict])
      redirect_to @sdistrict, :notice  => "Successfully updated sdistrict."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sdistrict = Sdistrict.find(params[:id])
    @sdistrict.destroy
    redirect_to sdistricts_url, :notice => "Successfully destroyed sdistrict."
  end
end
