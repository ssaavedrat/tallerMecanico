# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "reparations.rb"))'
puts 'Importing reparations...'

vehicle_ids = Vehicle.pluck(:id)
service_ids = Service.pluck(:id)

# Creando 50 ejemplos de reparaciones usando Faker y asociándolos aleatoriamente a vehículos y servicios existentes
50.times do
  reparation = Reparation.create(
    vehicle_id: vehicle_ids.sample,          # Asocia aleatoriamente a un vehículo existente
    service_id: service_ids.sample,          # Asocia aleatoriamente a un servicio existente
    status: rand(0..1),  # Genera un estado aleatorio (0, 1)
    start_time: Faker::Time.between(from: DateTime.now - 10.days, to: DateTime.now, format: :default),
    end_time: Faker::Time.forward(days: 5, format: :default),
    observation: Faker::Lorem.sentence
  )
end

puts 'Reparations created successfully!'
