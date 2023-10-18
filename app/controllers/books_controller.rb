class BooksController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のオブジェクトを生成する
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングメーター
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end

