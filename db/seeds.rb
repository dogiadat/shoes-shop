User.create!(name:  "Le Khac Sang",
             email: "canon.kma90@gmail.com",
             password:              "hoacolau1",
             password_confirmation: "hoacolau1",
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