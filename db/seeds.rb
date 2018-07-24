# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying seed"

Photo.destroy_all
puts "No more photos"
Room.destroy_all
puts "No more rooms"
Apartment.destroy_all
puts "No more apartments"

puts "Creating apartments"

alice = Apartment.new(
  location: "Au pied du métro Cormontaigne",
  size: 130,
  number_of_rooms: 5,
  name: "Alice D.",
  price: 2275,
  price_per_room: 455,
  category: "coloc",
  bathroom: 2,
  toilet: 3,
  terrace: true,
  washing_machine: false,
  washing_room: true,
  dining_room: true,
  living_room: true,
  kitchen: true,
)
alice.save!

alice_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924961/Alice%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925746/Alice%20D./chambre%202/chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925756/Alice%20D./chambre%203/chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925764/Alice%20D./chambre%204/chambre4.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924961/Alice%20D./couloir.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924961/Alice%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924962/Alice%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924962/Alice%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924962/Alice%20D./sejour2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924963/Alice%20D./terrasse.jpg"]

alice_array.each do |url|
  alice.remote_photo_url = url
end

alice_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = alice
  photo.save!
end


camille = Apartment.create(
  location: "Au pied du métro Port de Lille",
  size: 83,
  number_of_rooms: 4,
  name: "Camille D.",
  price: 1720,
  price_per_room: 430,
  category: "coloc",
  bathroom: 1,
  toilet: 1,
  shower_room: 1,
  living_room: true,
)

camille_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531925056/Camille%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925058/Camille%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925058/Camille%20D./couloir.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./cuisine2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./douche.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./plan.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925060/Camille%20D./plan2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./sejour2.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1531925056/Camille%20D./chambre1.jpg"]

camille_array.each do |url|
  camille.remote_photo_url = url
end

camille_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = camille
  photo.save!
end

claire = Apartment.create(
  location: "Au pied du métro Cormontaigne",
  size: 70,
  number_of_rooms: 3,
  name: "Claire D.",
  price: 1200,
  price_per_room: 400,
  category: "coloc",
  living_room: true,
  terrace: true,
  bathroom: 1,
  shower_room: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  kitchen: true,
)

claire_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./cuisine2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./laverie.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./sejour2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./terrasse.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./toilettes.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./chambre2.jpg"]

claire_array.each do |url|
  claire.remote_photo_url = url
end

claire_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = claire
  photo.save!
end

francine = Apartment.create(
  location: "Place Maréchal Leclerc - Vauban",
  size: 136,
  number_of_rooms: 5,
  name: "Francine D.",
  price: 2250,
  price_per_room: 450,
  category: "coloc",
  living_room: true,
  bathroom: 2,
  toilet: 1,
  washing_machine: true,
  kitchen: true,
)

francine_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531990135/Francine%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre5.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./couloir.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./cuisine2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./lavelinge.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./plan.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924486/Francine%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./toilettes.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre4.jpg"]
 francine_array.each do |url|
  francine.remote_photo_url = url
end

francine_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = francine
  photo.save!
end

jules = Apartment.create(
  location: "Place Maréchal Leclerc - Vauban",
  size: 140,
  number_of_rooms: 6,
  name: "Jules D.",
  price: 2730,
  price_per_room: 455,
  category: "coloc",
  bathroom: 2,
  toilet: 2,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
)

jules_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre4.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./couloir.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./cuisine2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./plan.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./salle_de_bain2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./vue.jpg",
]

jules_array.each do |url|
  jules.remote_photo_url = url
end

jules_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = jules
  photo.save!
end

lucie = Apartment.create(
  location: "Au pied du métro Cormontaigne",
  size: 100,
  number_of_rooms: 4,
  name: "Lucie D.",
  price: 1720,
  price_per_room: 430,
  category: "coloc",
  bathroom: 1,
  shower_room: 1,
  toilet: 2,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
)

lucie_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924710/Lucie.D/chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924711/Lucie.D/chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924710/Lucie.D/chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/chambre5.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924711/Lucie.D/couloir.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/cuisine2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/douche.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924714/Lucie.D/salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924713/Lucie.D/sejour.jpg"]

lucie_array.each do |url|
  lucie.remote_photo_url = url
end

lucie_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = lucie
  photo.save!
end

odette = Apartment.create(
  location: "Jean-Baptiste Lebas - Roubaix",
  size: 83,
  number_of_rooms: 4,
  name: "Odette D.",
  price: 1400,
  price_per_room: 350,
  category: "coloc",
  bathroom: 1,
  shower_room: 1,
  toilet: 1,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
)

odette_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924785/Odette%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924785/Odette%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924785/Odette%20D./chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924785/Odette%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./plan.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./plan2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./sejour2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./terrasse.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./toilettes.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./vue.jpg"]

odette_array.each do |url|
  odette.remote_photo_url = url
end

odette_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = odette
  photo.save!
end

appart302 = Apartment.create(
  location: "Au pied du métro Cormontaigne",
  size: 45,
  number_of_rooms: 1,
  name: "Appart 302",
  price: 780,
  category: "Appart",
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
)

appart302_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-chambre2.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-salon.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-salle_a_manger.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-toilette.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-cuisine.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-pieces.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-cuisine2.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-chambre.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-_salle_de_bain.jpg"]

appart302_array.each do |url|
  appart302.remote_photo_url = url
end

appart302_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = appart302
  photo.save!
end

appart303 = Apartment.create(
  location: "Au pied du métro Cormontaigne",
  size: 45,
  number_of_rooms: 1,
  name: "Appart 303",
  price: 750,
  category: "Appart",
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
)

appart303_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1532436564/Appart%20-%20303/303_-_cuisine.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436564/Appart%20-%20303/303-_toilette.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436564/Appart%20-%20303/303-chambre2.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_sejour.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_salon.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_couloir.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_chambre.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_salle_de_bain.jpg"]

appart303_array.each do |url|
  appart303.remote_photo_url = url
end

appart303_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = appart303
  photo.save!
end
