class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user), notice: "New member successfully created."
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def match
    if current_user
      @user = current_user
      @matches_10miles = User.near([ current_user.latitude, current_user.longitude], 10).where.not(id: current_user.id)

    else
      redirect_to root_path, notice: 'You must be logged in to view this page.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :ability, :bio, :avatar, :password, :address, :latitude, :longitude)
  end

end
