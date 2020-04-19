class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]
  before_action :return_root, only: [:index, :show]

  def index
    @book = Book.all
    @books = @book.order(created_at: :desc).limit(3)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show

  end

  def destroy
    
  end

  private

  def book_params
    params.require(:book).permit(:name, :explain, :image, :genre)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def return_root
    redirect_to action: :index unless user_signed_in?
  end
end
