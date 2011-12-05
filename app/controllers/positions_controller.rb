class PositionsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @positions = Position.paginate(:page => params[:page])
    @position = Position.new
  end

  def show
    @position = Position.find(params[:id])
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(params[:position])
    if @position.save
      redirect_to @position, :notice => "Successfully created position."
    else
      render :action => 'new'
    end
  end

  def edit
    @position = Position.find(params[:id])
  end

  def update
    @position = Position.find(params[:id])
    if @position.update_attributes(params[:position])
      redirect_to @position, :notice  => "Successfully updated position."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    redirect_to positions_url, :notice => "Successfully destroyed position."
  end
end
