class Restaurant < ApplicationRecord
  has_many :users
  has_many :orders
  belongs_to :menu_item, :order, dependent: :destroy
end
