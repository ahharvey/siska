class ElfoursController < ApplicationController
  before_filter :authenticate_user!
  def index
    @elfours = Elfour.all
  end

  def show
    @elfour = Elfour.find(params[:id])
  end

  def new
    @elfour = Elfour.new
  end

  def create
    @elfour = Elfour.new(params[:elfour])
    if @elfour.save
      redirect_to @elfour, :notice => "Successfully created elfour."
    else
      render :action => 'new'
    end
  end

  def edit
    @elfour = Elfour.find(params[:id])
  end

  def update
    @elfour = Elfour.find(params[:id])
    if @elfour.update_attributes(params[:elfour])
      redirect_to @elfour, :notice  => "Successfully updated elfour."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @elfour = Elfour.find(params[:id])
    @elfour.destroy
    redirect_to elfours_url, :notice => "Successfully destroyed elfour."
  end
end
