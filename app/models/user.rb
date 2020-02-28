class User < ApplicationRecord
  has_one_attached :photo
  has_many :bands
  has_many :bookings
  has_many :reviews, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
