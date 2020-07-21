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

crew_neck = Product.create(name: "CGC Logo Black Crew Neck", price: 44.99, inventory: 100, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/crewneck1.png')
f_croptop = Product.create(name: "CGC Logo White Croptop", price: 24.99, inventory: 100, category: 'Women', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Womens-Lifestyle_White.jpg')
m_vneck_blk = Product.create(name: "CGC Black V-Neck Tee", price: 29.99, inventory: 100, category: 'Men', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Mens-2_Black.png')

order1 = Order.create(user_id: clark.id, total: 29.99, payment_status: 'Paid', shipped_status: true)

lineitem1 = Lineitem.create(order_id: order1.id, product_id: m_vneck_blk.id, quantity: 1)
lineitem2 = Lineitem.create(order_id: order1.id, product_id: crew_neck.id, quantity: 1)


