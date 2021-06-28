class Movie < ApplicationRecord
  has_many :actors
  validates :director, presence: true

end
