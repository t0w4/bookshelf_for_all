class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string    :title           #タイトル
      t.string    :author          #著者
      t.string    :publisher       #出版社
      t.integer   :isbn            #ISBNコード
      t.timestamp :publicationDate #出版年月日
      t.text      :image           #画像
      t.timestamps
    end
  end
end