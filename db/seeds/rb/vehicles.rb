# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "vehicles.rb"))'
puts 'Importing vehicles...'

# Creando 50 ejemplos de vehículos usando Faker y asociándolos aleatoriamente a usuarios existentes
50.times do
    user = User.all.sample # Escoge un usuario aleatorio existente
  
    Vehicle.create(
      user: user,
      plate: Faker::Vehicle.license_plate,
      brand: Faker::Vehicle.make,
      model: Faker::Vehicle.model,
      year: Faker::Vehicle.year,
      color: Faker::Vehicle.color,
      car_issue: Faker::Lorem.sentence
    )
  end

puts 'Vehicles imported successfully!'