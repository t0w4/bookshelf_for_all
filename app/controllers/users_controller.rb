# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user_books = current_user.user_books.order('created_at DESC')
    books = Kaminari.paginate_array(@user_books.map(&:book))
    @books = books.page(params[:page]).per(PER_PAGE)
  end

  def edit; end

  def update
    current_user.update(update_params)
  end

  def create
    @user_book = UserBook.new(book_id: user_book_params[:id],
                              user_id: book_params[current_user.id])
    return redirect_to @user if @user_book.save
    render :show
  end

  private

  def user_book_params
    params.permit(:id)
  end
end
