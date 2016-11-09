class Book < ActiveRecord::Base
  acts_as_taggable            # acts_as_taggable_on :tags のエイリアス

  #validation
  validates_presence_of :title, :author, :publicationDate
  validates_date :publicationDate

  #association
  has_many :user_books, dependent: :destroy
  has_many :users, through: :user_books

  #callback
  after_create :create_user_books

  private
  def create_user_books
    UserBook.create(book_id: self.id, user_id: User.current.id)
  end

end
