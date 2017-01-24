class ImagesController < ApplicationController
  def index
    @image = Image.all
  end

  def new
    @image = Image.new
    @categories = Category.all
  end

  def create
    image = Image.create #image_params

    if params[:file].present?
     req = Cloudinary::Uploader.upload( params[:file] )
     image.url = req["public_id"]
   end

    image.category_ids = params[:category_ids]
    image.save
    @current_user.images << image
    redirect_to categories_path #image
    # params[:category][:ids].each do |checked_category_id|
    # end

  end

  def edit
    @image = Image.find params[:id]
  end

  def update
    image = Image.find params[:id]

    if params[:file].present?
     req = Cloudinary::Uploader.upload( params[:file] )
     image.url = req["public_id"]
   end

    image.update_attributes image_params
    image.save

    # TODO: check image saved correctly, or had errors? (if image.save)

    redirect_to image_path
  end

  def show
    @image = Image.find params[:id]

  end

  def destroy
    image = Image.find params[:id]
    image.destroy
    redirect_to image_path
  end


  private
  def image_params
      params.require(:image).permit(:user_id, :url)
  end
end
