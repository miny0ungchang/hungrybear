class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :orders

  has_many :menu_items, dependent: :destroy

  #geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true, uniqueness: true
  cuisines = %w[French Italian Fast\Food Japanese Indian Chinese Peranakan Korean Spanish Salads Street\Food]
  validates :category, inclusion: { in: cuisines }
  validates :rating, inclusion: { in: (1..5) }
end
