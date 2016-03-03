class BooksController < ApplicationController
    before_action :authenticate_user!
  #before_action :set_book, only: [:edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
  # @cart_action = @book.cart_action current_user.try :id
end
  

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
       render :new 
    end
  end

  def update 
    @book = Book.find(params[:id])
    if @book.update(book_params)
     redirect_to @book, notice: 'Book was successfully updated.' 
    else
      render :edit 
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_url, notice: 'book was successfully deleted.' 
  end

def edit
  @book = Book.find(params[:id])
  render new_book_path if @book
end

  # GET /books/new
  
  # GET /books/1/edit
  
  # POST /books
  # POST /books.json
  
    def book_params
      params.require(:book).permit(:title, :author, :price, :poster_url)
    end
end
