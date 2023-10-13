# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "reparations.rb"))'
puts 'Importing reparations...'

20.times do
    Reparation.create(
      status: Reparation.statuses.keys.sample, # Escoge un estado aleatorio de los disponibles
      start_date_time: Faker::Time.between(from: DateTime.now - 10.days, to: DateTime.now, format: :default),
      end_date_time: Faker::Time.forward(days: 5, format: :default),
      observations: Faker::Lorem.sentence
    )
end
  
puts "Reparations created!"