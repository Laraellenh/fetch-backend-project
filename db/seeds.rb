# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding"

User.create!(name: "Johnny Freed")
User.create!(name: "Giraldo Rivera")
User.create!(name: "Lauren Blue")

Payee.create!(name: "DANNON")
Payee.create!(name: "Nabisco")
Payee.create!(name: "Lays")
Payee.create!(name: "Lululemon")
Payee.create!(name: "Amazon Fresh")

Transaction.create!(points: 100, payee_id: 1, user_id: 1)
Transaction.create!(points: 200, payee_id: 1, user_id: 2)
Transaction.create!(points: 400, payee_id: 4, user_id: 1)
Transaction.create!(points: 600, payee_id: 2, user_id: 3)
Transaction.create!(points: 100, payee_id: 3, user_id: 2)
Transaction.create!(points: 300, payee_id: 4, user_id: 2)
Transaction.create!(points: 1000, payee_id: 5, user_id: 1)
Transaction.create!(points: 300, payee_id: 1, user_id: 1)