class Tag < ActiveRecord::Base
  has_many :books, through: :books_tags
  has_many :books_tags
end
