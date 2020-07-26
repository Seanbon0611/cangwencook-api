# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sean = User.create(first_name: 'Sean', last_name: 'Dever', email: 'seand0611@gmail.com', phone_number: '+16506363678', address1: '555 Mission Street', city: 'San Francisco', state: 'California', zipcode: 94014, password: 'seandever', is_admin: true)
gwen = User.create(first_name: 'Gwen', last_name: 'Sioson', email: 'gwenpsioson@gmail.com', phone_number: '+16506567898', address1: '222 Mission Street', city: 'Fresno', state: 'California', zipcode: 85725, password: 'gwensioson', is_admin: true)

clark = User.create(first_name: 'Clark', last_name: 'Sioson', email: 'big_daddy_clark@gmail.com', phone_number: '+16503333333', address1: '111 Mission Street', city: 'San Francisco', state: 'California', zipcode: 57483, password: 'clarksioson', is_admin: false)

crew_neck = Product.create(name: "CGC Logo Black Crew Neck", price: 44.99, active:true, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/crewneck1.png')
f_croptop = Product.create(name: "CGC Logo White Croptop", price: 24.99, active:true, category: 'Women', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Womens-Lifestyle_White.jpg')
m_vneck_blk = Product.create(name: "CGC Black V-Neck Tee", price: 29.99, active:true, category: 'Men', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Mens-2_Black.png')
u_hoodie = Product.create(name: "CGC Black Hoodie", price: 52.99, active:true, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/sweaterneck1.png')

crew_neck_inv = Inventory.create(product_id: crew_neck.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
f_croptop_inv = Inventory.create(product_id: f_croptop.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
m_vneck_blk_inv = Inventory.create(product_id: m_vneck_blk.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
u_hoodie_inv = Inventory.create(product_id: u_hoodie.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
order1 = Order.create(user_id: clark.id, total: 29.99, payment_status: 'Paid', shipped_status: true)

korean_taco = Recipe.create(title: "Korean Ground Beef Tacos", video_id: 'UPM-gek01ms', description: "Korean Taco Description", image: "https://storage.cloud.google.com/can-gwen-cook-pics/tacos1.jpg", keto: true, gluten_free:true, low_calorie: true, paleo: true, dairy_free: true, vegetarian: false, quick: true)
miso_lambchop = Recipe.create(title: "Miso Glaze Lambchops", video_id: 'kSVm82SpD_s', description: "Miso Glaze Lambchop Description", image: "https://storage.cloud.google.com/can-gwen-cook-pics/lamb.jpg", keto: true, gluten_free: true, low_calorie: false, paleo: true, dairy_free: true, vegetarian: false, quick: false)
three_scones = Recipe.create(title: "Scones 3 ways", video_id: 'W9lTn9JXaDs', description: "Scones 3 different ways!", image: "https://storage.cloud.google.com/can-gwen-cook-pics/scones1.jpg", keto: true, gluten_free:true, low_calorie: false, paleo: false, dairy_free: false, vegetarian: false, quick: true)
macademia_bread = Recipe.create(title: "Macademia Nut Bread", video_id: '1AHX8neY95U', description: "Macademia Nut Bread, amazing", image: "https://2.bp.blogspot.com/-UEEPRsmPGyM/UKBhEw1-M8I/AAAAAAAAAtM/pxhKm34FaWA/s1600/fat+bread+3.JPG", keto: true, gluten_free:true, low_calorie: false, paleo: false, dairy_free: false, vegetarian: true, quick: true)

lineitem1 = Lineitem.create(order_id: order1.id, product_id: m_vneck_blk.id, quantity: 1)
lineitem2 = Lineitem.create(order_id: order1.id, product_id: crew_neck.id, quantity: 1)


