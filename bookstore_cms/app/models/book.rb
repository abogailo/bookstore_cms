class Book < ApplicationRecord
    belongs_to :author
    belongs_to :administrator,
        :class_name => "User"
        :foreign_kay => "user_id"
    has_many :categories, through: :category_books, source: :category
    has_many :book_genres, through: :genre_books, source: :genre
    has_many :reviews, dependent: :destroy
end
