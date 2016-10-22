class BooksController < ApplicationController

  def index
    @books = Book.page(params[:page]).per(12).order("created_at DESC")
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  def search
    case params[:searchtype]
    when "title" then
      @books = Book.search(:title_cont => "#{params[:keyword]}").result.page(params[:page]).per(12).order("created_at DESC")
    when "author" then
      @books = Book.search(:author_cont => "#{params[:keyword]}").result.page(params[:page]).per(12).order("created_at DESC")
    when "tag" then
      @books = Book.search(:title_cont => "#{params[:keyword]}").result.page(params[:page]).per(12).order("created_at DESC")
    end
  end

end