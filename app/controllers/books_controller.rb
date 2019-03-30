# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.page(params[:page]).per(PER_PAGE).order('created_at DESC')
  end

  def show; end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    create_or_update_params
    return redirect_to @book if @book.save

    render :new
  end

  def edit; end

  def update
    create_or_update_params
    return redirect_to @book if @book.save

    render :edit, collections: @book
  end

  def destroy
    @book.destroy
  end

  def search
    books = Book.search_by_type(params[:searchtype], params[:keyword])
    @books = books.page(params[:page]).per(PER_PAGE).order('created_at DESC')
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(
      :title,
      :author,
      :publisher,
      :publicationDate,
      :image,
      :description,
      :tag_list
    )
  end

  def create_or_update_params
    @book.assign_attributes(
      title: book_params[:title],
      author: book_params[:author],
      publisher: book_params[:publisher],
      publicationDate: book_params[:publicationDate],
      image: book_params[:image],
      description: book_params[:description],
      tag_list: book_params[:tag_list]
    )
  end
end
