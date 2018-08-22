# frozen_string_literal: true

class Book < ActiveRecord::Base
  acts_as_taggable # acts_as_taggable_on :tags

  # validation
  validates_presence_of :title, :author, :publicationDate
  validates_date :publicationDate

  # association
  has_many :user_books, dependent: :destroy
  has_many :users, through: :user_books

  # callback
  after_create :create_user_books

  class << self
    def search_by_type(search_type, keyword)
      case search_type
      when 'title' then
        search(title_cont: keyword).result
      when 'author' then
        search(author_cont: keyword).result
      when 'tag' then
        tagged_with(keyword)
      else
        search(title_cont: keyword).result
      end
    end
  end

  private

  def create_user_books
    UserBook.create(book_id: id, user_id: User.current.id)
  end
end
