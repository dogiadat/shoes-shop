User.create!(name:  "Le Khac Sang",
             email: "canon.kma90@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             address: "Hanoi",
             phone: "0123456789",
             role: :admin)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               address: "Hanoi",
               phone: "0123456789",
               password:              password,
               password_confirmation: password)
end
Category.create!(name: "Nike")
Category.create!(name: "Adidas")
Category.create!(name: "Faker")
Category.create!(name: "Cheseal boot")
Category.create!(name: "Cnes")

10.times do |n|
  name  = Faker::Name.name
  Product.create!(name:  name,
                description: "giaynew",
                price: 1000000,
                status: 1,
                category_id: 1,
                image: File.open("#{Rails.root}/app/assets/images/product/product2.jpg")
                )
end

5.times do |n|
  name  = Faker::Name.name
  Order.create!(name: name,
                email: "email",
                address: "Hanoi",
                phone: "0123456789",
                user_id: 1,
                status: 1
                )
end
