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

crew_neck = Product.create(name: "Logo Black Crew Neck", price: 44.99, active:true, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/crewneck1.png', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
f_croptop = Product.create(name: "Logo White Croptop", price: 24.99, active:true, category: 'Women', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Womens-Lifestyle_White.jpg', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Flat_White.jpg", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
m_vneck_blk = Product.create(name: "Logo Black V-Neck Tee", price: 29.99, active:true, category: 'Men', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Mens-2_Black.png', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Flat_Black.png", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
u_hoodie = Product.create(name: "Logo Black Hoodie", price: 52.99, active:true, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/sweaterneck1.png', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
f_tanktop_blk = Product.create(name: "Logo Black Tanktop", price: 23.99, active:true, category: 'Women', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Woman_White.png', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
m_vneck_red = Product.create(name: "Logo Red V-Neck Tee", price: 29.99, active:true, category: 'Men', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Mens-2_Red.png', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/Logo_Standard-Color_mockup_Front_Flat_Red.png", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
windbreaker = Product.create(name: "Logo Grey Windbreaker", price: 59.99, active:true, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
joggers = Product.create(name: "Logo Joggers", price: 52.99, active:true, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")
apron = Product.create(name: "Logo Apron", price: 34.99, active:true, category: 'Unisex', image: 'https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg', alt_image1: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image2: "https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg", alt_image3:"https://storage.cloud.google.com/can-gwen-cook-pics/comingsoon.jpg")


crew_neck_inv = Inventory.create(product_id: crew_neck.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
f_croptop_inv = Inventory.create(product_id: f_croptop.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
m_vneck_blk_inv = Inventory.create(product_id: m_vneck_blk.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
u_hoodie_inv = Inventory.create(product_id: u_hoodie.id, size_xs:20, size_s:30, size_m:30, size_l:30, size_xl:30, size_xxl:20)
order1 = Order.create(user_id: clark.id, total: 29.99, payment_status: 'Paid', shipped_status: true)

korean_taco = Recipe.create(title: "Korean Ground Beef Tacos", video_id: 'UPM-gek01ms', description: "Korean-inspired flavors in the form of tacos", image: "https://storage.cloud.google.com/can-gwen-cook-pics/tacos1.jpg", keto: true, gluten_free:true, low_calorie: true, paleo: true, dairy_free: true, vegetarian: false, quick: true, calories: 1200, net_carbs: 11, protein: 165, fat:89)
miso_lambchop = Recipe.create(title: "Miso Glaze Lambchops", video_id: 'kSVm82SpD_s', description: "Miso Glaze Lambchop packed full of flavor", image: "https://storage.cloud.google.com/can-gwen-cook-pics/lamb.jpg", keto: true, gluten_free: true, low_calorie: false, paleo: true, dairy_free: true, vegetarian: false, quick: false, calories: 750, net_carbs: 1, protein: 70, fat:45)
three_scones = Recipe.create(title: "Scone Party", video_id: 'W9lTn9JXaDs', description: "Three different flavored scones", image: "https://storage.cloud.google.com/can-gwen-cook-pics/scones1.jpg", keto: true, gluten_free:true, low_calorie: false, paleo: false, dairy_free: false, vegetarian: false, quick: true, calories: 1100, net_carbs: 7, protein: 25, fat:60)
macademia_bread = Recipe.create(title: "Macademia Nut Bread", video_id: '1AHX8neY95U', description: "Macademia Nut Bread, amazing", image: "https://2.bp.blogspot.com/-UEEPRsmPGyM/UKBhEw1-M8I/AAAAAAAAAtM/pxhKm34FaWA/s1600/fat+bread+3.JPG", keto: true, gluten_free:true, low_calorie: false, paleo: false, dairy_free: false, vegetarian: true, quick: true, calories: 1500, net_carbs: 12, protein: 12, fat:100)

k_taco_step1 = Instruction.create(recipe_id: korean_taco.id, step: "Combine minced garlic, cubed Asian pear, 1/2 cup of coco aminos in a blender and puree.")
k_taco_step2 = Instruction.create(recipe_id: korean_taco.id, step: "Pour into a large bowl and stir in the 1 cup of coco aminos, Monkfruit sweetener, sesame oil, and black pepper.")
k_taco_step3 = Instruction.create(recipe_id: korean_taco.id, step: "Pour mixture on top of the ground beef. Mix well with spoon or hands.")
k_taco_step4 = Instruction.create(recipe_id: korean_taco.id, step: "Heat up a large pan with 1 tablespoon of avocado oil.")
k_taco_step5 = Instruction.create(recipe_id: korean_taco.id, step: "Cook ground beef mixture until meat turns brown.")
k_taco_step6 = Instruction.create(recipe_id: korean_taco.id, step: "Use the pickled radish as a mini-taco shell. Add a bit of kimchee on top for a little spice")


lamb_step1 = Instruction.create(recipe_id: miso_lambchop.id, step: "Bring the 1 tablespoon of rice vinegar, 3 tablespoon of water and ¼ cup of mirin to a boil in a medium saucepan over high heat. Boil for 20 seconds to evaporate the alcohol.")
lamb_step2 = Instruction.create(recipe_id: miso_lambchop.id, step: "Turn the heat down to low, add the miso paste, and whisk. When the miso has dissolved completely, turn the heat up to high again and add the sugar, whisking constantly to ensure that the sugar doesn't burn on the bottom of the pan.")
lamb_step3 = Instruction.create(recipe_id: miso_lambchop.id, step: "Remove from heat once the sugar is fully dissolved. Cool to room temperature.")
lamb_step4 = Instruction.create(recipe_id: miso_lambchop.id, step: "Place lamb chops in a container. Pour room temperature marinade on top. Marinate for a minimum of 8 hours.")
lamb_step5 = Instruction.create(recipe_id: miso_lambchop.id, step: "In a non-stick frying pan, add 1 tablespoon of avocado oil on med heat.")
lamb_step6 = Instruction.create(recipe_id: miso_lambchop.id, step: "Place 2-3 lamb chops in the pan for each round. Shake off any excess marinade before adding to pan or it will burn .")
lamb_step7 = Instruction.create(recipe_id: miso_lambchop.id, step: "Flip lamb chop over after 3-4 mins or until nicely charred on the outside and just cooked through on the inside.")
lamb_step8 = Instruction.create(recipe_id: miso_lambchop.id, step: "Once both sides are charred, place lamb chop on a plate and let it rest for 3-4 mins before eating. Serve the lamb chops with your favorite side dish like cauliflower rice or mash potatoes.")

lamb_ingredient1 = Ingredient.create(recipe_id: miso_lambchop.id, name: "Lamb Chop", measurement: "1 Rack(cut into single chops)")
lamb_ingredient2 = Ingredient.create(recipe_id: miso_lambchop.id, name: "White miso paste", measurement: "4 tablespoons")
lamb_ingredient3 = Ingredient.create(recipe_id: miso_lambchop.id, name: "Monkfruit sweetener", measurement: "3 tablespoons")
lamb_ingredient4 = Ingredient.create(recipe_id: miso_lambchop.id, name: "Mirin", measurement: "1/4 Cup")
lamb_ingredient5 = Ingredient.create(recipe_id: miso_lambchop.id, name: "Rice vinegar", measurement: "1 tablespoon")
lamb_ingredient6 = Ingredient.create(recipe_id: miso_lambchop.id, name: "Water", measurement: "3 tablespoons")
lamb_ingredient7 = Ingredient.create(recipe_id: miso_lambchop.id, name: "Avocado Oil", measurement: "1 tablespoon")

scones_ingredient1 = Ingredient.create(recipe_id: three_scones.id, name: "Almond Flour", measurement: "2 Cups")
scones_ingredient2 = Ingredient.create(recipe_id: three_scones.id, name: "Baking Powder", measurement: "2 Teaspoons")
scones_ingredient3 = Ingredient.create(recipe_id: three_scones.id, name: "Garlic Powder", measurement: "1/2 Teaspoon")
scones_ingredient4 = Ingredient.create(recipe_id: three_scones.id, name: "Onion Powder", measurement: "1/2 Teaspoon")
scones_ingredient5 = Ingredient.create(recipe_id: three_scones.id, name: "Kosher Salt", measurement: "1/2 Teaspoon")
scones_ingredient6 = Ingredient.create(recipe_id: three_scones.id, name: "Fresh Cracked Pepper", measurement: "A few crackles")
scones_ingredient7 = Ingredient.create(recipe_id: three_scones.id, name: "Eggs", measurement: "2 servings")
scones_ingredient8 = Ingredient.create(recipe_id: three_scones.id, name: "Melted butter", measurement: "1/2 cup")


k_taco_ingredient1 = Ingredient.create(recipe_id: korean_taco.id, name: "Ground Beef", measurement: "2 lbs")
k_taco_ingredient2 = Ingredient.create(recipe_id: korean_taco.id, name: "Asian Pear", measurement: "1")
k_taco_ingredient3 = Ingredient.create(recipe_id: korean_taco.id, name: "Coco amino liquid seasoning", measurement: "1 cup")
k_taco_ingredient4 = Ingredient.create(recipe_id: korean_taco.id, name: "Minced garlic", measurement: "4 tablespoons")
k_taco_ingredient5 = Ingredient.create(recipe_id: korean_taco.id, name: "Monkfruit sweetener", measurement: "1/2 cup")
k_taco_ingredient6 = Ingredient.create(recipe_id: korean_taco.id, name: "Sesame oil", measurement: "1/2 cup")
k_taco_ingredient7 = Ingredient.create(recipe_id: korean_taco.id, name: "Black pepper", measurement: "1/4 teaspoon")
k_taco_ingredient8 = Ingredient.create(recipe_id: korean_taco.id, name: "Pickled radish", measurement: "1 package")
k_taco_ingredient9 = Ingredient.create(recipe_id: korean_taco.id, name: "Kimchi", measurement: "2 cups")
k_taco_ingredient10 = Ingredient.create(recipe_id: korean_taco.id, name: "Avocado oil", measurement: "1 tablespoon")



lineitem1 = Lineitem.create(order_id: order1.id, product_id: m_vneck_blk.id, quantity: 1)
lineitem2 = Lineitem.create(order_id: order1.id, product_id: crew_neck.id, quantity: 1)


