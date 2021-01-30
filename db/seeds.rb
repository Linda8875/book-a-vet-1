# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clearing data..."

Slot.destroy_all
Vet.destroy_all
Pet.destroy_all
Client.destroy_all


puts "generating vets..."

vet1 = Vet.create!(email: "vet1@example.com", password: "123456", first_name: "vet", last_name: "one", phone: "+4912241415", address: "teststr.12", city_name: "munich", postal_code: 80632,  languages: "german", bio: "test test", services: "test")
vet2 = Vet.create!(email: "vet2@example.com", password: "123456", first_name: "vet", last_name: "two", phone: "+4912241415", address: "teststr.12", city_name: "munich", postal_code: 80632,  languages: "german", bio: "test test", services: "test")
vet3 = Vet.create!(email: "vet3@example.com", password: "123456", first_name: "vet", last_name: "three", phone: "+4912241415", address: "teststr.12", city_name: "munich", postal_code: 80632,  languages: "german", bio: "test test", services: "test")
vet4 = Vet.create!(email: "vet4@example.com", password: "123456", first_name: "vet", last_name: "four", phone: "+4912241415", address: "teststr.12", city_name: "munich", postal_code: 80632,  languages: "german", bio: "test test", services: "test")
vet5 = Vet.create!(email: "vet5@example.com", password: "123456", first_name: "vet", last_name: "five", phone: "+4912241415", address: "teststr.12", city_name: "munich", postal_code: 80632,  languages: "german", bio: "test test", services: "test")
vet6 = Vet.create!(email: "vet6@example.com", password: "123456", first_name: "vet", last_name: "six", phone: "+4912241415", address: "teststr.12", city_name: "munich", postal_code: 80632,  languages: "german", bio: "test test", services: "test")

puts "generating clients..."

client1 = Client.create!(email: "client1@example.com", password: "123456", first_name: "client", last_name: "one", phone: "+4912241415")
client2 = Client.create!(email: "client2@example.com", password: "123456", first_name: "client", last_name: "two", phone: "+4912241415")
client3 = Client.create!(email: "client3@example.com", password: "123456", first_name: "client", last_name: "three", phone:  "+4912241415")
client4 = Client.create!(email: "client4@example.com", password: "123456", first_name: "client", last_name: "four", phone: "+4912241415")
client5 = Client.create!(email: "client5@example.com", password: "123456", first_name: "client", last_name: "five", phone: "+4912241415")
client6 = Client.create!(email: "client6@example.com", password: "123456", first_name: "client", last_name: "six", phone: "+4912241415")

puts "generating pets..."

pet1 = Pet.create!(name: "test", species: "cat", health_info: "healthy", client: client1)
pet2 = Pet.create!(name: "test2", species: "cat", health_info: "healthy", client: client6)



puts "generating slots...."

slot1 = Slot.create!(start_time: Time.new.strftime("15:00"), end_time: 1700, weekday: "Monday", availability: true, vet: vet1)
slot2 = Slot.create!(start_time: 1500, end_time: 1700, weekday: "Monday", availability: true, vet: vet1)