class User < ApplicationRecord
  belongs_to :restaurant
  belongs_to :order
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
  validates :address, presence: true
  validates :mobile_number, presence: true
end
