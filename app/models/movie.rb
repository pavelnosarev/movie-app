class Movie < ApplicationRecord
  has_many :actors
  # validates :director, presence: true
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
