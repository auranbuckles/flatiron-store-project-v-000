10.times do 
  Item.create(
    title: Faker::Commerce.product_name, 
    inventory: Faker::Number.number(2), 
    price: Faker::Number.number(4)
  )
  Category.create(title: Faker::Commerce.department)
end

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end

User.create(name: "Chocolate Girl", email: "ice_cream@gmail.com", password: "foodie11", password_confirmation: "foodie11")

User.create(name: "Fighter", email: "jet123456@gmail.com", password: "musthavethis", password_confirmation: "musthavethis")

User.create(name: "Miss Bunny", email: "tomatorabbit@gmail.com", password: "carrotsss", password_confirmation: "carrotsss")
