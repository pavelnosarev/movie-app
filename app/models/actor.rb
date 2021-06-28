class Actor < ApplicationRecord
  # validates :first_name, presence: true {minimum: 2}
  # validates :last_name, presence: true {minimum: 2}
  # validates :known_for, presence: true
  # validates :age, presence: true {minimum: 13}
  belongs_to :movie
end
