class Band < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  belongs_to :category
  belongs_to :genre
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true
  validates :fee, presence: true
end
