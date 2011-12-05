class GearCategoriesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @gear_categories = GearCategory.paginate(:page => params[:page])
    @gear_category = GearCategory.new
  end

  def show
    @gear_category = GearCategory.find(params[:id])
  end

  def new
    @gear_category = GearCategory.new
  end

  def create
    @gear_category = GearCategory.new(params[:gear_category])
    if @gear_category.save
      redirect_to @gear_category, :notice => "Successfully created gear category."
    else
      render :action => 'new'
    end
  end

  def edit
    @gear_category = GearCategory.find(params[:id])
  end

  def update
    @gear_category = GearCategory.find(params[:id])
    if @gear_category.update_attributes(params[:gear_category])
      redirect_to @gear_category, :notice  => "Successfully updated gear category."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @gear_category = GearCategory.find(params[:id])
    @gear_category.destroy
    redirect_to gear_categories_url, :notice => "Successfully destroyed gear category."
  end
end
