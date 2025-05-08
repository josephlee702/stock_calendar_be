Trade.destroy_all
User.destroy_all

user1 = User.create(
    name: "Joseph Lee", 
    email: "jhjlee702@gmail.com", 
    password: "ffffff", 
    password_confirmation: "ffffff"
  )

trade1 = Trade.create(
  date: "2025-05-08",
  amount: 550.00
)

user1.trades << trade1

puts "Seeded successfully!"