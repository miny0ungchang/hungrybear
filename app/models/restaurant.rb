class Restaurant < ApplicationRecord
  has_many :users
  has_many :orders
  has_many :menu_items, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  cuisines = %w[French Italian Fast\Food Japanese Indian Chinese Peranakan Korean Spanish Salads Street\Food]
  validates :category, inclusion: { in: cuisines }
  validates :rating, inclusion: { in: (1..5) }
end
