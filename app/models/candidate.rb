class Candidate < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}

  has_many :votes

  def show_votes
    count = votes.size
    if count > 5
      "<b style='color: red'>#{count}</b>".html_safe
    else
      "<b style='color: blue'>#{count}</b>".html_safe
    end
  end
end
