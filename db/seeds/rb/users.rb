# frozen_string_literal: true
# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "users.rb"))'

puts 'Importing users...'

30.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    password: '123456',
    password_confirmation: '123456',
    # Random role
    role: rand(0..1)
  )
end