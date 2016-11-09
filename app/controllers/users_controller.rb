class UsersController < ApplicationController

  def show
    @user_books = current_user.user_books.order("created_at DESC")
    @books = Kaminari.paginate_array(@user_books.map(&:book)).page(params[:page]).per(12)
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  def create
    @userbook = UserBook.new(book_id: user_book_params[:id], user_id: book_params[current_user.id])
    # saveメソッドの戻り値をチェック
    if @userbook.save
      # 戻り値がtrueなので成功
      redirect_to @user
    else
      # 戻り値がfalseなので失敗
      render :new
    end
  end

  private
  def user_book_params
    params.permit(:id)

  end

end
