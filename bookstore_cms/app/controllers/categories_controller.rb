class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    #change to sorted after adding lamdas scope thing
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "category created successfully."
      redirect_to(categorys_path)
    else
      render('new')
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:notice] = "category updated successfully."
      redirect_to(category_path(@category))
    else
      render('edit')
    end
  end

  def delete
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "category destroyed successfully."
    redirect_to(categorys_path)
  end

  private

  def category_params
    params.require(:category).permit(
      :name)
  end
end
