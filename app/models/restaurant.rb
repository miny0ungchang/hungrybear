class Restaurant < ApplicationRecord
  has_many :users, dependent: :destroy
  belongs_to :menu_item, :order, dependent: :destroy
end
