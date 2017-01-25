class LikesController < ApplicationController

def create
  # raise 'create'
  like = Like.create user_id: @current_user.id, image_id: params[:image_id]
  redirect_to image_path params[:image_id]
end

def destroy
  like = Like.find_by(user_id: @current_user.id, image_id: params[:image_id])
  # raise like.inspect
  like.destroy
  redirect_to image_path params[:image_id]
end

end
