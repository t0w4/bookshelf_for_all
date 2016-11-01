class Book < ActiveRecord::Base
  has_many :tags,  through: :books_tags
  has_many :books_tags

  #validation
  validates_presence_of :title, :author, :publicationDate
  validates_date :publicationDate
end
