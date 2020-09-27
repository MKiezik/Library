class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  # Load the view of the same name after action has executed
  # app/views/books/index.html.erb
  # view will have access to the @books variable

  def show
    @book = Book.find(params[:id])
  end
  # app/views/books/show.html.erb

  def new
    @book = Book.new
  end
  # app/views/books/new.html.erb


  def create  
    # @book = Book.new(title: '', author: '' ... )  use hash from form
    # @book = Book.new(params[:book]) [:title/author/description]

    # manage permission to access fields that should be private, e.g admin privileges
    @book = Book.new(book_params) # book_params method instead of directly using params hash
                                  # 

    if @book.save
      redirect_to  action: :index
    else
      render :new #render form associated with new
    
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def book_params # define parameters that I have access to, book_params instead of directly using hash params[:book]
    params.require(:book).permit(:title, :author, :description, :price, :stock_quantity)
      
  end
    
end
