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
    if current_user
      @distance = Geocoder::Calculations.distance_between([@user.latitude, @user.longitude], [current_user.latitude, current_user.longitude])
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to matches_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'User successfully deleted.'
  end

  def matches
    if current_user
      @matches_5miles = User.near([current_user.latitude, current_user.longitude], 5).where.not(id: current_user.id)
      @matches_10miles = User.near([current_user.latitude, current_user.longitude], 10).where.not(id: current_user.id)
      @matches_duplicates = @matches_10miles + @matches_5miles
      @matches_10miles_uniq = @matches_duplicates.reject{ |match| @matches_duplicates.count(match) > 1 }
      @matches_ability = User.where(ability: current_user.ability).where.not(id: current_user.id)
    else
      redirect_to root_path, notice: 'You must be logged in to view this page.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :ability, :bio, :avatar, :password, :address, :latitude, :longitude)
  end

end
