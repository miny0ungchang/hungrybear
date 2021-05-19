
class Restaurant < ApplicationRecord
  has_many :users
  has_many :orders
  belongs_to :menu_item, dependent: :destroy
end

