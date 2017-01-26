class UsersController < ApplicationController
  before_action :check_if_logged_in, :only => [:edit, :update]
  before_action :check_if_admin, :only => [:index]
  # //following
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end


  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    # @user = @current_user
  end


  def update
    user = @current_user
    user.update user_params
    redirect_to user_path
  end

  def show
    @user = User.find params[:id]
  end

  # //following
  def following
   @title = "Following"
   @user  = User.find(params[:id])
   @users = @user.following.paginate(page: params[:page])
   render 'show_follow'
 end

 def followers
   @title = "Followers"
   @user  = User.find(params[:id])
   @users = @user.followers.paginate(page: params[:page])
   render 'show_follow'
 end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar, :bio, :username)
  end

end
