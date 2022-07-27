class Race < ApplicationRecord
  has_many :positions

  validates :name, :special, :tier, presence: true
end
