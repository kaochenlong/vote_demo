class Vote < ApplicationRecord
  belongs_to :candidate, counter_cache: true
  validates :ip_address, presence: true
end
