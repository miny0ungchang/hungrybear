class User < ApplicationRecord

  has_many :restaurants
  has_many :orders

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
  validates :address, presence: true
  validates :mobile_number, presence: true
end