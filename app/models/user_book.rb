class UserBook < ActiveRecord::Base

  #association
  belongs_to :book
  belongs_to :user

end
