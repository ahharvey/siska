class UsersController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @positions = Position.default
    @offices = Office.default
  end

  def create
    @user = User.new(params[:user])
    generated_password = Devise.friendly_token.first(6)
    User.create!(
      :lname => @user.lname, 
      :fname => @user.fname,
      :email => @user.email, 
      :office_id => @user.office, 
      :position => @user.position,
      :password => generated_password,
      :password_confirmation => generated_password
    )
    

    #RegistrationMailer.welcome(user, generated_password).deliver
    if @user.save
      redirect_to @user, :notice => "Successfully created user."
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @positions = Position.default
    @offices = Office.default
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, :notice => "Successfully destroyed user."
  end
end
