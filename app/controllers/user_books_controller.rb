class UserBooksController < ApplicationController

  def show
    @user_book = UserBook.find(params[:id])
    @book = @user_book.book
  end

  def destroy
    @user_book = UserBook.find(params[:id])
    @user_book.destroy

    redirect_to controller: 'users', action: 'show', id: current_user.id
  end

  def add
    @userbook = UserBook.new(book_id: user_book_params[:book_id], user_id: user_book_params[:user_id])
    @userbook.save

    redirect_to controller: 'users', action: 'show', id: current_user.id
  end

  def user_book_params
    params.permit(:book_id, :user_id)
  end

end
