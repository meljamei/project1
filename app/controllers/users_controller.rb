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
  # Follows a user.
 def follow(other_user)
   active_relationships.create(followed_id: other_user.id)
 end

 # Unfollows a user.
 def unfollow(other_user)
   active_relationships.find_by(followed_id: other_user.id).destroy
 end
 
 # Returns true if the current user is following the other user.
 def following?(other_user)
   following.include?(other_user)
 end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar, :bio, :username)
  end

end
