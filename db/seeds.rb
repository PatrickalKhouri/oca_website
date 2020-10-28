# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
Neighbourhood.destroy_all
# Condominium.destroy_all
# Apartment.destroy_all
# User.destroy_all
# Room.destroy_all
# Furniture.destroy_all

puts "Creating Cities..."

rio_de_janeiro = City.create(name: "Rio de Janeiro")
buzios = City.create(name: "Búzios")

puts "Cities created"

puts "Creating neighbourhoods.."

copacabana = Neighbourhood.create(name: "Copacabana", city: rio_de_janeiro.id, description: "Copacabana é um bairro tradicional do Rio de Janeiro.É um bairro extremamente prático e central para toda a Zona Sul. Além de ser turístico, também é bastante comercial, onde é possível se encontrar lojas e serviços de qualquer espécie, com preços sempre em conta.")

puts "Neighbourhoods created neighbourhoods.."


puts "Seeds created"