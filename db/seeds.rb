require 'faker'

User.destroy_all
Restaurant.destroy_all
MenuItem.destroy_all

menu_item_images = [ "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/2087748/pexels-photo-2087748.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/4194390/pexels-photo-4194390.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/884600/pexels-photo-884600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/2098085/pexels-photo-2098085.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" ]

resto_images = [ "https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/3052362/pexels-photo-3052362.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/5490933/pexels-photo-5490933.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1115251/pexels-photo-1115251.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1115251/pexels-photo-1115251.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/5490921/pexels-photo-5490921.jpeg?auto=compress&cs=tinysrgb&dpr=2&&h=750&w=1260", "https://images.pexels.com/photos/262047/pexels-photo-262047.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/5220092/pexels-photo-5220092.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/3475617/pexels-photo-3475617.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/5490932/pexels-photo-5490932.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/3421920/pexels-photo-3421920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/3475617/pexels-photo-3475617.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1663384/pexels-photo-1663384.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/3421920/pexels-photo-3421920.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&dpr=2&&h=750&w=1260" ]

resto_catg = %w[French Italian Fast\Food Japanese Indian Chinese Peranakan Korean Spanish Salads Street\Food]

# 3.times do
#   User.create!(
#     email: Faker::Internet.email,
#     password: "secret",
#   )
# end

# # 15.times do
# #   Restaurant.create!(
# #     name: Faker::Restaurant.name,
# #     address: Faker::Address.full_address, 
# #     category: resto_catg.sample, 
# #     rating: rand(1..5),
# #     min_time: [15, 30, 45].sample,
# #     max_time: [60, 90, 120].sample,
# #     img_url: resto_images.sample,
# #     lat: Faker::Address.latitude,
# #     lng: Faker::Address.longitude,
# #     #user_id: [1, 2, 3].sample
# #     user: User.all.sample
# #   )
# # end

# Restaurant.create!(
#   name: "Marina Bay hotel with city view",
#   address: "Marina Bay Sands, Singapore", 
#   category: resto_catg.sample, 
#   rating: rand(1..5),
#   min_time: [15, 30, 45].sample,
#   max_time: [60, 90, 120].sample,
#   img_url: resto_images.sample,
#   latitude: 0,
#   longitude: 0,
#   # user_id: [1, 2, 3].sample
#   user: User.all.sample
# )

# Restaurant.create!(
#   name: "Little India Street",
#   address: "Little India, Singapore", 
#   category: resto_catg.sample, 
#   rating: rand(1..5),
#   min_time: [15, 30, 45].sample,
#   max_time: [60, 90, 120].sample,
#   img_url: resto_images.sample,
#   latitude: 0,
#   longitude: 0,
#   # user_id: [1, 2, 3].sample
#   user: User.all.sample
# )

# Restaurant.create!(
#   name: "Tanjong Pagar",
#   address: "Tanjong Pagar, Singapore", 
#   category: resto_catg.sample, 
#   rating: rand(1..5),
#   min_time: [15, 30, 45].sample,
#   max_time: [60, 90, 120].sample,
#   img_url: resto_images.sample,
#   latitude: 0,
#   longitude: 0,
#   # user_id: [1, 2, 3].sample
#   user: User.all.sample
# )

# Restaurant.create!(
#   name: "North Point",
#   address: "930 Yishun Ave 2, Singapore", 
#   category: resto_catg.sample, 
#   rating: rand(1..5),
#   min_time: [15, 30, 45].sample,
#   max_time: [60, 90, 120].sample,
#   img_url: resto_images.sample,
#   latitude: 0,
#   longitude: 0,
#   # user_id: [1, 2, 3].sample
#   user: User.all.sample
# )

# Restaurant.create!(
#   name: "Wheelock",
#   address: "501 Orchard Rd, Singapore", 
#   category: resto_catg.sample, 
#   rating: rand(1..5),
#   min_time: [15, 30, 45].sample,
#   max_time: [60, 90, 120].sample,
#   img_url: resto_images.sample,
#   latitude: 0,
#   longitude: 0,
#   # user_id: [1, 2, 3].sample
#   user: User.all.sample
# )

# 100.times do
#   MenuItem.create!(
#     name: Faker::Food.dish,
#     description: Faker::Food.description, 
#     img_url: menu_item_images.sample,
#     price_cents: rand(500..5000),
#     restaurant: Restaurant.all.sample
#     )
# end

Orders.create!(
  total_order: 2,
  user_id: User.all.sample,
  # restaurant_id: Restaurant.all.sample
)
# create_table "orders", force: :cascade do |t|
#   t.integer "total_order"
#   t.bigint "user_id", null: false
#   t.bigint "restaurant_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
#   t.index ["user_id"], name: "index_orders_on_user_id"
# end