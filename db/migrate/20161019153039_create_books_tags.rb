# frozen_string_literal: true

class CreateBooksTags < ActiveRecord::Migration
  def change
    create_table :books_tags do |t|
      t.integer  :books_id
      t.integer  :tags_id
      t.timestamps
    end
  end
end
