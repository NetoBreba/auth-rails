class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new 
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path    
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :author, :publishDate, :edition)
    end
end
