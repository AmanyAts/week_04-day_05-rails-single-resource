class BooksController < ApplicationController
    def index
        @books=Book.all
    end


    def show 
        @book = Book.find(params[:id]) #params is key word id=1
    end
    def destroy 
        @book = Book.find(params[:id]) #params is key word id=1
        @book.destroy

        redirect_to books_path
    end

    

    def new
        @book= Book.new #create an empty object, new book but it doesn't save it yet
    end

    def create
        @book= Book.create(book_params)

        redirect_to book_path(@book)
        # redirect_to books_path

    end
    
    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        @book.update(book_params)
        redirect_to book_path(@book)
    end

    def book_params
        params.require(:book).permit(:title)
    end
end