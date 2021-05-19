class Restaurant < ApplicationRecord
  has_many :users
  has_many :orders
  belongs_to :menu_item, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  cuisines = %w[French Italian Fast\Food Japanese Indian Chinese Peranakan Korean Spanish Salads Street\Food]
  validates :cuisine, inclusion: { in: cuisines }
  validates :rating, inclusion: { in: (1..5) }
end
