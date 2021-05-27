class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_many :order_menu_items, dependent: :destroy
  has_many :orders, through: :order_menu_items

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end
