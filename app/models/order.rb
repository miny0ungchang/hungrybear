class Order < ApplicationRecord
  belongs_to: restaurant
  belongs_to: user
  has_many :order_menu_items, dependent: :destroy
  has_many menu_items, through: :order_menu_items
end
