class Candidate < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}

  has_many :votes
end
