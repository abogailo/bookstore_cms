class CartsController < ApplicationController
  def index
    @carts = Cart.all
    #change to sorted after adding lamdas scope thing
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      flash[:notice] = "cart created successfully."
      redirect_to(carts_path)
    else
      render('new')
    end
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def update
    @cart = Cart.find(params[:id])
    if @cart.update_attributes(cart_params)
      flash[:notice] = "cart updated successfully."
      redirect_to(cart_path(@cart))
    else
      render('edit')
    end
  end

  def delete
    @cart = Cart.find(params[:id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    flash[:notice] = "cart destroyed successfully."
    redirect_to(carts_path)
  end

  private

  def cart_params
    params.require(:cart).permit(
      :user_id)
  end
end
