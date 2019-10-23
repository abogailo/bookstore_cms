class BooksController < ApplicationController
  #add admin to all of this
  def index
    @books = Book.all
    #change to sorted after adding lamdas scope thing
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "book created successfully."
      redirect_to(books_path)
    else
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:notice] = "book updated successfully."
      redirect_to(book_path(@book))
    else
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "book destroyed successfully."
    redirect_to(books_path)
  end

  private

  def book_params
    params.require(:book).permit(
      :title, 
      :isbn,
      :description, 
      :author_id, 
      :quantity, 
      :condition,
      :price,
      :year_published)
  end
end
