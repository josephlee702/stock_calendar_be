Trade.destroy_all
User.destroy_all

user1 = User.create(
    name: "Joseph Lee", 
    email: "jhjlee702@gmail.com", 
    password: "123456", 
    password_confirmation: "123456"
  )

trade1 = Trade.create(
  date: "2025-05-08",
  amount: 550.00,
  symbol: "AAPL",
  trade_type: "Buy",
  option_type: "",
  notes: "Test Notes",
  was_disciplined: true
)

user1.trades << trade1

puts "Seeded successfully!"