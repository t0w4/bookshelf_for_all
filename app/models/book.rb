class Book < ActiveRecord::Base
  acts_as_taggable            # acts_as_taggable_on :tags のエイリアス

  #validation
  validates_presence_of :title, :author, :publicationDate
  validates_date :publicationDate
end
