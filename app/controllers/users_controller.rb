class UsersController < ApplicationController
  before_action :check_if_logged_in, :only => [:edit, :update]
  before_action :check_if_admin, :only => [:index]

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end


  def create
    user = User.new user_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload( params[:file] )
      user.avatar = req["public_id"]
    end

    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    # @user = @current_user
  end


  def update
    # raise params.inspect
    user = @current_user

    if params[:file].present?
      req = Cloudinary::Uploader.upload( params[:file] )
      user.avatar = req["public_id"]
    end

    user.update_attributes user_params
    user.save

    redirect_to user_path
  end

  def show
    @user = User.find params[:id]
  end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar, :bio, :username, :name)
  end

end
