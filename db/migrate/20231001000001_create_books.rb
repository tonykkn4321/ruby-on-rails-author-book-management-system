# db/migrate/20231001000001_create_books.rb

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end