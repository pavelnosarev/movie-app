class Movie < ApplicationRecord
  validates :director, presence: true
end
