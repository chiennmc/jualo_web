# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	username: 							"Test",
	email: 									"test@gmail.com",
	password: 							"123456",
	password_confirmation: 	"123456",
)

User.create!(
	username: 							"Admin",
	email: 									"admin@gmail.com",
	password: 							"123456",
	password_confirmation: 	"123456",
)

40.times do |n|
	name_1 		= "Car"
	name_2 		= "Motor"
	name_3 		= "Fashion"
	name_4 		= "Handphone"
	name_5 		= "Kemara"
	arr_name 	= [name_1, name_2, name_3, name_4, name_5]
	# name 			= arr_name[n]
	
	Category.create!(
		name: 			arr_name.sample,
		parent_id: 	rand(0..8)
	)
end

30.times do |n|
  ProSpec.create!(
    name:         "APV",
    transmission: "Auto",
    kilometer:    rand(10000..20000),
    color:        "Blue",
    year:         rand(2012..2019),
    cc:           rand(50..200),
    fuel:         "Fuel"
  )
end

# Create brand
Brand.create!(
  name:  "Honda",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Motorcycle_Brands/honda2x-1cf1fb87b151734303332eb2f9222a76aab8914de7f8c62a32b60dba85256239.png"
)

Brand.create!(
  name:  "Yamaha",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Motorcycle_Brands/yamaha2x-44648a5f7d9770a34508b729d21b0c7d0378fb2ac29e8d8afcbefe909fe8b79e.png"
)

Brand.create!(
  name:  "Kawasaki",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Motorcycle_Brands/kawasaki2x-c027e1c96da0dc3a68ae7e891f17d104226557d32a88f020ce0f2367f3595f39.png"
)

Brand.create!(
  name:  "Suzuki",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Motorcycle_Brands/suzuki2x-0a99b849810638d1538e3e69fd34ea4bf442d6ebc5c0bbe0ac0a52fe7546b376.png"
)

Brand.create!(
  name:  "Piaggio",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Motorcycle_Brands/piaggio2x-1e3d03562af957ab0dc701d50995739e95fbad4bf466900ff6da59ea8a4de1d0.png"
)

Brand.create!(
  name:  "Toyota",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Car_Brands/toyota2x-a639cac3ba190580ba36232dc1f4781b4e5c39659d59f58fcbd4ff142fd52eeb.png"
)

Brand.create!(
  name:  "Mitsubishi",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Car_Brands/mitsubishi2x-705795addd878bf5140546e85b430a525f45d7b5612b34655dd03eeb3f70057a.png"
)

Brand.create!(
  name:  "Daihatsu",
  image: "https://www.jualo.com/assets/milan_version/brand_image/Car_Brands/daihatsu2x-07b9488fe93dc9024543b9c033d5c98eb7088a52f1596bd9269f1641e26e6413.png"
)

30.times do |n|
  BrandDetail.create!(
    brand_id:    rand(1..8),
    category_id: rand(1..3)
  )
end

30.times do |n|
  status_1 = "in stock"
  status_2 = "out of stock"
  arr_status = [status_1, status_2]

  name_1 = "Dream #{rand(1..10)}"
  name_2 = "Xmax #{rand(1..10)}"
  name_3 = "Wave #{rand(1..10)}"
  name_4 = "Lead #{rand(1..10)}"
  arr_name = [name_1, name_2, name_3, name_4]

  Product.create!(
    name:        arr_name.sample,
    price:       rand(1..15) * 10_000_000,
    status:      arr_status.sample,
    category_id: rand(1..10)
  )
end


1000.times do |n|
  ProDetail.create!(
    price:       rand(1..15) * 10_000_000,
    user_id:     rand(1..2),
    product_id:  rand(1..20),
    pro_spec_id: rand(1..30)
  )
end

150.times do |n|
  image_1 = "https://chugiong.com/uploads/super-dream-110cc-bac-ninh-14949059737862982.jpg"
  image_2 = "https://autopro56.mediacdn.vn/2017/092117-2018-yamaha-xmax-300-2-768x545-1506411063540.jpg"
  image_3 = "https://giaxe.2banh.vn/cache/dataupload/products/slides/520_368_0fb318f5de78797f7c1ebda4d3394fd0.JPG"
  image_4 = "https://img.vietnamfinance.vn/thumbs/700x0/upload/news/ledinhnga/2018/11/28/e-am-honda-lead-2016-duoc-dai-ly-ban-ra-duoi-gia-de-xuat1468493158.jpg"
  arr_image = [image_1, image_2, image_3, image_4]

  ProImage.create!(
    image:         arr_image.sample,
    pro_detail_id: rand(1..30),
    is_card:       false
  )
end