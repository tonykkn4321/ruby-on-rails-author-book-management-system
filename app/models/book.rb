# app/models/book.rb

class Book < ApplicationRecord
  belongs_to :author
  validates :title, presence: true
  validates :year, numericality: { only_integer: true }, allow_nil: true
end