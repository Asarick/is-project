# Create crops
crops = ['Maize', 'Wheat', 'Rice', 'Coffee', 'Tea']
crops.each { |crop| Crop.create(name: crop) }

# Create insurance packages
packages = [
  { name: 'Basic', base_premium: 1000 },
  { name: 'Standard', base_premium: 2000 },
  { name: 'Premium', base_premium: 3000 }
]
packages.each { |package| InsurancePackage.create(package) }

# Create premium types
premium_types = ['Annual', 'Semi-Annual', 'Quarterly']
premium_types.each { |type| PremiumType.create(name: type) }

puts "Seed data created successfully!"


# # Create users
# farmer = User.create!(name: "John Farmer", email: "john@example.com", password: "password", role: "farmer")
# buyer = User.create!(name: "Alice Buyer", email: "alice@example.com", password: "password", role: "buyer")

# Create products
Product.create!(name: "Apples", price: 150, quantity: 100, image_url: "https://example.com/apple.jpg", location: "Nairobi", user: farmer)
Product.create!(name: "Carrots", price: 75, quantity: 200, image_url: "https://example.com/carrot.jpg", location: "Mombasa", user: farmer)

# Create markets
Market.create!(name: "Central Farmers Market", location: "City Center", open_days: "Mon, Wed, Fri")
Market.create!(name: "Green Valley Market", location: "Suburban Area", open_days: "Tue, Thu, Sat")

# Create market bookings
MarketBooking.create!(market: Market.first, user: farmer, date: Date.today + 1.week, special_requirements: "Need extra space for apple display")