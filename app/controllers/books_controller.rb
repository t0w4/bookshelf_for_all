class BooksController < ApplicationController

  def index
    @books = Book.page(params[:page]).per(12).order("created_at DESC")
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(title: book_params[:title], author: book_params[:author], publisher: book_params[:publisher], publicationDate: book_params[:publicationDate], image: book_params[:image], description: book_params[:description], tag_list: book_params[:tag_list])
    # saveメソッドの戻り値をチェック
    if @book.save
      # 戻り値がtrueなので成功
      redirect_to @book
    else
      # 戻り値がfalseなので失敗
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(title: book_params[:title], author: book_params[:author], publisher: book_params[:publisher], publicationDate: book_params[:publicationDate], image: book_params[:image], description: book_params[:description])
      # 戻り値がtrueなので成功
      redirect_to @book
    else
      # 戻り値がfalseなので失敗
      render :edit, :collections => @book
    end

  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  def search
    case params[:searchtype]
    when "title" then
      @books = Book.search(:title_cont => "#{params[:keyword]}").result.page(params[:page]).per(12).order("created_at DESC")
    when "author" then
      @books = Book.search(:author_cont => "#{params[:keyword]}").result.page(params[:page]).per(12).order("created_at DESC")
    when "tag" then
      @books = Book.tagged_with(params[:keyword]).page(params[:page]).per(12).order("created_at DESC")
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :publisher, :publicationDate, :image, :description)
  end

end