# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying seed"

Apartment.destroy_all

puts "Creating apartments"

alice = Apartment.new(
  location: "Au pied du métro Cormontaigne",
  size: 130,
  number_of_rooms: 5,
  name: "Alice D.",
  commodities: "Séjour, salle à manger, terrasse, 2 salles de bains, 3 w.c, laverie.",
  price: 2275,
  price_per_room: 455,
  photo:"https://source.unsplash.com/random",
  )
alice.save!

camille = Apartment.new(
  location: "Au pied du métro Port de Lille",
  size: 83,
  number_of_rooms: 4,
  name: "Camille D.",
  commodities: "Séjour, 1 salle de bain, 1 salle de douche, 1 w.c, lave linge",
  price: 1720,
  price_per_room: 430,
  photo:"https://source.unsplash.com/random",
  )
camille.save!

claire = Apartment.new(
  location: "Au pied du métro Cormontaigne",
  size: 70,
  number_of_rooms: 3,
  name: "Claire D.",
  commodities: "Séjour, terrasse, 1 chambre mezzanine, salle de bain, salle de douche, 1 w.c, laverie",
  price: 1200,
  price_per_room: 400,
  photo: "https://source.unsplash.com/random",
  )
claire.save!

francine = Apartment.new(
  location: "Place Maréchal Leclerc - Vauban",
  size: 136,
  number_of_rooms: 5,
  name: "Francine D.",
  commodities: "Séjour, 2 salles de bains, 1 w.c, lave linge",
  price: 2250,
  price_per_room: 450,
  photo:"https://source.unsplash.com/random",
  )
francine.save!

jules = Apartment.new(
  location: "Place Maréchal Leclerc - Vauban",
  size: 140,
  number_of_rooms: 6,
  name: "Jules D.",
  commodities: "Séjour-salle à manger, 2 salles de bains, 2 w.c, lave linge",
  price: 2730,
  price_per_room: 455,
  photo:"https://source.unsplash.com/random",
  )
jules.save!

lucie = Apartment.new(
  location: "Au pied du métro Cormontaigne",
  size: 100,
  number_of_rooms: 4,
  name: "Lucie D.",
  commodities: "Séjour-salle à manger, 1 salle de bain, 1 salle de douche, 2 w.c, lave linge",
  price: 1720,
  price_per_room: 430,
  photo:"https://source.unsplash.com/random",
  )
lucie.save!

odette = Apartment.new(
  location: "Jean-Baptiste Lebas - Roubaix",
  size: 83,
  number_of_rooms: 4,
  name: "Odette D.",
  commodities: "Séjour-salle à manger, 1 salle de bain, 1 salle de douche, 1 w.c, lave linge",
  price: 1400,
  price_per_room: 350,
  photo:"https://source.unsplash.com/random",
  )
odette.save!



