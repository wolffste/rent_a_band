class Band < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true
  validates :band_email, presence: true
  validates :fee, presence: true
end
