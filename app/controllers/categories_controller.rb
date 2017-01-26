class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new

  end

  def search
    @categories = Category.search(params[:query])
    raise @categories.inspect
  end


  def create
    category = Category.create category_params
    redirect_to category
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    category = Category.find params[:id]
    category.update category_params
    redirect_to category
  end

  def show
    @category = Category.find params[:id]
  end

  def destroy
    category = Category.find params[:id]
    category.destroy
    redirect_to categoties_path
  end


  private
  def category_params
    params.require(:category).permit(:title, :user_id)
  end
end
