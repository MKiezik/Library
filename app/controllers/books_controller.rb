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
  end
  # app/views/books/new.html.erb


  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
