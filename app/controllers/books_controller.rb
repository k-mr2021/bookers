class BooksController < ApplicationController
   def index
    @books = Book.all
    @book = Book.new(book_params)
   end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/'
  end

 

  

  def edit
  end
  
  private
  # ストロングメーター
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end

