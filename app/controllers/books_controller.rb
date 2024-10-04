class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    
  end

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def show
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
