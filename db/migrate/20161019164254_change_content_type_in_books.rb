class ChangeContentTypeInBooks < ActiveRecord::Migration
  def change
    change_column :books, :isbn, :text
  end
end
