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