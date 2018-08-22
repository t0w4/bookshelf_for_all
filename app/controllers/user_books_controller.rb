# frozen_string_literal: true

class UserBooksController < ApplicationController
  before_action :set_user_book, only: %i[show destroy]

  def show
    @book = @user_book.book
  end

  def destroy
    @user_book.destroy
    redirect_to controller: 'users', action: 'show', id: current_user.id
  end

  def add
    @user_book = UserBook.new(book_id: user_book_params[:book_id],
                              user_id: user_book_params[:user_id])
    @user_book.save

    redirect_to controller: 'users', action: 'show', id: current_user.id
  end

  def user_book_params
    params.permit(:book_id, :user_id)
  end

  private

  def set_user_book
    @user_book = UserBook.find(params[:id])
  end
end
