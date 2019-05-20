class BooksController < ApplicationController
    def index
        @author = Author.find(params[:author_id])
        @books = @author.books
    end

    def show 
        @author = Author.find(params[:author_id])
        @book = @author.books.find(params[:id])
    end

    def destroy
        @author = Author.find(params[:author_id])
        @book = @author.books.find(params[:id])
        @book.destroy

        redirect_to author_books_path(@author)
    end

    def new 
        @author = Author.find(params[:author_id])
        @book = @author.books.new
    end

    def create
        @author = Author.find(params[:author_id])
        @book = @author.books.create(book_params)
        # redirect_to books_path
        redirect_to author_book_path(@author, @book)
    end

    def edit 
        @author = Author.find(params[:author_id])
        @book = @author.books.find(params[:id])
    end

    def update 
        @author = Author.find(params[:author_id])
        @book = @author.books.find(params[:id])
        @book.update(book_params)
        # redirect_to books_path
        redirect_to author_book_path(@author, @book)
    end

    def book_params
        params.require(:book).permit(:title, :print_date, :original_language)
    end
end