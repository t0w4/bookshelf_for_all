class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name #タグ名
      t.timestamps
    end
  end
end
