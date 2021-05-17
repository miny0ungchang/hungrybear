class User < ApplicationRecord
  belongs_to :restaurant
  belongs_to :order
  validates :name, presence: true,
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :password, presence: true, confirmation: true
  validates :address, presence: true
  validates :mobile_number, presence: true
end
