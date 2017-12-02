class Vote < ApplicationRecord
  belongs_to :candidate
  validates :ip_address, presence: true
end
