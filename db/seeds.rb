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
  location: "In front of the metro station Cormontaigne",
  size: 130,
  number_of_rooms: 5,
  name: "Alice D.",
  price: 455,
  category: "flatsharing",
  bathroom: 3,
  toilet: 3,
  terrace: true,
  washing_machine: false,
  washing_room: true,
  dining_room: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
  )
alice.save!

Apartment::Translation.create(
  apartment_id: alice.id,
  locale: "fr",
  location: "Au pied du métro Cormontaigne",
  category: "coloc",
  description: "Charme et espace de 180 m² au sol triplex meublé de 5 chambres. Colocation jeunes salariés. Métro Cormontaigne.
En rez-de-chaussée : grand séjour sur terrasse et grande cuisine ouverte. 4 grandes chambres dont 2 en cave anglaise + 1 chambre plus petite à l'étage, buanderie. 2 salles de bains, 1 salle d'eau et 3 WCs. Laverie.
Bail de 12 mois : 455 €/mois par chambre + charges : Wifi (fibre optique), copropriété, Électricité, 1h de ménage par semaine.
Bail court : prix à négocier.")




alice_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924962/Alice%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924962/Alice%20D./sejour2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924963/Alice%20D./terrasse.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924961/Alice%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924961/Alice%20D./couloir.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924961/Alice%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925746/Alice%20D./chambre%202/chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925756/Alice%20D./chambre%203/chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925764/Alice%20D./chambre%204/chambre4.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924962/Alice%20D./salle_de_bain.jpg"
 ]

alice_array.each do |url|
  alice.remote_photo_url = url
end

alice_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = alice
  photo.save!
end


camille = Apartment.create(
  location: "In front of the metro station Port de Lille",
  size: 83,
  number_of_rooms: 4,
  name: "Camille D.",
  category: "flatsharing",
  price: 430,
  bathroom: 1,
  terrace: true,
  toilet: 1,
  shower_room: 1,
  living_room: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)

Apartment::Translation.create(
  apartment_id: camille.id,
  locale: "fr", location: "Au pied du métro Port de Lille",
  category: "coloc",
  description: "Quartier Vauban. Dans résidence calme, au 5e et dernier étage, ascenseur. 5 pièces 83 m², entièrement équipé et meublé, excellent état : séjour, cuisine américaine avec lave-vaisselle, terrasse exposée sud-ouest, salle de douche, wc séparés, lave et sèche-linge, 4 chambres toutes avec nombreux placards, literie bon état, bureaux.
  Bail de 12 mois : 430 €/mois.chambre + 85 charges : Wifi (fibre optique), copropriété, Électricité, 1h de ménage par semaine.
  Bail court : prix à négocier.")


camille_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./sejour2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./cuisine2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925058/Camille%20D./couloir.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925056/Camille%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925058/Camille%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./chambre3.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925061/Camille%20D./douche.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925059/Camille%20D./plan.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531925060/Camille%20D./plan2.jpg"]

camille_array.each do |url|
  camille.remote_photo_url = url
end

camille_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = camille
  photo.save!
end

claire = Apartment.create(
  location: "In front of the metro station Port de Lille",
  size: 70,
  number_of_rooms: 3,
  name: "Claire D.",
  category: "flatsharing",
  price: 400,
  living_room: true,
  terrace: true,
  bathroom: 1,
  shower_room: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)

Apartment::Translation.create(
  apartment_id: claire.id,
  locale: "fr", location: "Au pied du métro Port de Lille",
  category: "coloc",
  description: "Trés joli T3 entièrement meublé et équipé. 2 chambres + mezzanine. Belle terrasse. Idéal couple avec 1 enfant ou petite colocation constituée de 2 jeunes actifs. Emplacement top au pied du métro, bus et station V'Lille.
  Location courte durée 6 mois maximum renouvelable.
  1200 euro/mois toutes charges comprises- ménage 1h/semaine.
  Possibilité de louer un box en sus.")



claire_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./sejour.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./sejour2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./terrasse.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./cuisine.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./cuisine2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./chambre1.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./chambre2.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./salle_de_bain.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924331/Claire%20D./toilettes.jpg",
 "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924330/Claire%20D./laverie.jpg"
]

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
  category: "flatsharing",
  price: 450,
  living_room: true,
  bathroom: 2,
  toilet: 1,
  washing_machine: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)

Apartment::Translation.create(
  apartment_id: francine.id,
  locale: "fr", location: "Place Maréchal Leclerc - Vauban",
  category: "coloc",
  description: "Quartier Vauban, Place Maréchal Leclerc. 5 chambres dans colocation de 5 jeunes actifs, spacieux appartement, libre immédiatement.
  Grand appartement excellent état au rez-de-chaussée (double accès), dans un immeuble de standing (entrée sécurisée), entièrement meublé et équipé, 5 belles chambres très spacieuses, toutes avec placards, bureau, literie neuve, cuisine très bien équipée (frigo américain, lave-vaisselle), 2 salles de bains, 2 wc. Lave-linge, sèche-linge.
  Les charges comprennent wifi, électricité, charges de copropriété, 2 h ménage par semaine.
  Parking ou box en sus.
  455 E/chambre hors charges. (Bail court possible prix sur demande)"
)

francine_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924486/Francine%20D./sejour.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./cuisine.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./cuisine2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./couloir.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531990135/Francine%20D./chambre1.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre3.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre4.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924484/Francine%20D./chambre5.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./salle_de_bain.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./toilettes.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./lavelinge.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924485/Francine%20D./plan.jpg"
]
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
  category: "flatsharing",
  price: 455,
  bathroom: 2,
  toilet: 2,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)

Apartment::Translation.create(
  apartment_id: jules.id,
  locale: "fr", location: "Place Maréchal Leclerc - Vauban",
  category: "coloc",
  description: "Bel appartement de 140 m2 excellent état , au 7ème et dernier étage , 6 belles chambres meublées avec grands placards, bureau, literie, 2 salles de bain, 2 WC, cuisine équipée (lave linge et lave vaisselle), très fonctionnel. Cuisine américaine, séjour. Salle de douche.
  Bail de 12 mois : 455  €/mois + charges (wifi, copropriété, électricité, 1h de ménage par semaine). Bail court : prix à négocier. ")

jules_array = [ "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./sejour.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./vue.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./couloir.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./cuisine.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./cuisine2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre1.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre3.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./chambre4.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924597/Jules%20D./salle_de_bain.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./salle_de_bain2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924598/Jules%20D./plan.jpg"
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
  location: "In front of the metro station Cormontaigne",
  size: 100,
  number_of_rooms: 4,
  name: "Lucie D.",
  category: "flatsharing",
  price: 430,
  bathroom: 1,
  shower_room: 1,
  toilet: 2,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)


Apartment::Translation.create(
  apartment_id: lucie.id,
  locale: "fr", location: "Au pied du métro Cormontaigne",
  category: "coloc",
  description: "Quartier Vauban.colocation 4 jeunes actif.s.ves, très calmes, non fumeurs.
    Bel appartement de charme et standing, entièrement meublé et équipé, au pied du métro Cormontaigne.
    Très proche de la Catho, au 2éme et 3éme et dernier étage : cuisine équipée, séjour, 4 chambres, wc séparés, salle de douche.
    Bail de 12 mois : 430  €/mois + charges (wifi, copropriété, électricité, 1h de ménage par semaine). Bail court : prix à négocier.")


lucie_array = [ "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924713/Lucie.D/sejour.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/cuisine.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/cuisine2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924711/Lucie.D/couloir.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924710/Lucie.D/chambre1.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924711/Lucie.D/chambre2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924710/Lucie.D/chambre3.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/chambre5.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924714/Lucie.D/salle_de_bain.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924712/Lucie.D/douche.jpg"
]

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
  category: "flatsharing",
  price: 350,
  bathroom: 1,
  shower_room: 1,
  toilet: 1,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)

Apartment::Translation.create(
  apartment_id: odette.id,
  locale: "fr",
  location: "Jean-Baptiste Lebas - Roubaix",
  category: "coloc",
  description: "Bel appartement de 83 m2 excellent état, au 5ème , 4 belles chambres meublées avec grands placards, bureau, literie, 1 salles de douche, 1 salle d’eau, 1 WC, cuisine équipée (lave linge et lave vaisselle), très fonctionnel. Cuisine américaine.
  350  €/mois + charges (wifi, copropriété, électricité, 1h de ménage par semaine). Frais de dossier pour bail court (inférieur à 12 mois)"
  )

odette_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./sejour.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./sejour2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./terrasse.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./vue.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924785/Odette%20D./chambre1.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924785/Odette%20D./chambre2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924785/Odette%20D./chambre3.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./plan.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./plan2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./salle_de_bain.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1531924786/Odette%20D./toilettes.jpg",
]

odette_array.each do |url|
  odette.remote_photo_url = url
end

odette_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = odette
  photo.save!
end

appart302 = Apartment.create(
  location: "In front of the metro station Cormontaigne",
  size: 45,
  number_of_rooms: 1,
  name: "Appart 302",
  price: 780,
  category: "apartment",
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)

Apartment::Translation.create(
  apartment_id: appart302.id,
  locale: "fr",
  location: "Au pied du métro Cormontaigne",
  category: "appart",
  description: "T2 charme et proximité. Idéal cadre en déplacement (relocation) ou couple sans enfant.
  Courte durée à négocier. Quartier Vauban, situé au pied du métro et commerces.
  Au 2ème étage d'une maison ancienne, très beau 2 pièces de 45 m² entièrement meublé, lumineux, très bon état.
  Ménage hebdomadaire. Lingerie. Tous services Wifi. (Bail de 1 à 12 mois). 780 E/mois + provision charges.
  Garage possible en sus.")

appart302_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-salon.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-salle_a_manger.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-pieces.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-cuisine.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-cuisine2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-chambre2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-chambre.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-_salle_de_bain.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436374/Appart-2xl%20302/302-toilette.jpg"
]

appart302_array.each do |url|
  appart302.remote_photo_url = url
end

appart302_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = appart302
  photo.save!
end

appart303 = Apartment.create(
  location: "In front of the metro station Cormontaigne",
  size: 45,
  number_of_rooms: 1,
  name: "Appart 303",
  category: "apartment",
  price: 750,
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "Cosy apartment"
)

Apartment::Translation.create(
  apartment_id: appart303.id,
  locale: "fr", location: "Au pied du métro Cormontaigne",
  category: "appart",
  description: "Idéal cadre en déplacement (relocation) ou couple sans enfant. Quartier Vauban, situé au pied métro et commerces. Au 3ème étage d'un bel immeuble ancien, beaux volumes entièrement meublés, lumineux, excellent état. Ménage hebdomadaire. Lingerie. Tous services Wifi.
  (Bail de 1 à 12 mois).
  Bail 12 mois à 750 E/mois + provision charges (single 130€/couple 170€). Courte durée possible à négocier. Garage possible en sus."
  )


appart303_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_sejour.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_salon.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1532436564/Appart%20-%20303/303_-_cuisine.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_couloir.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436564/Appart%20-%20303/303-chambre2.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_chambre.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436563/Appart%20-%20303/303_-_salle_de_bain.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532436564/Appart%20-%20303/303-_toilette.jpg"
]

appart303_array.each do |url|
  appart303.remote_photo_url = url
end

appart303_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = appart303
  photo.save!
end

studio = Apartment.create(
  location: "In front of the metro station Cormontaigne",
  size: 14,
  number_of_rooms: 1,
  name: "Studio 28S",
  category: "apartment",
  price: 500,
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sept 1 2019"),
  description: "cosy flat"
)

Apartment::Translation.create(
  apartment_id: studio.id,
  locale: "fr",
  location: "Au pied du métro Cormontaigne",
  category: "appart",
  description: "Ce petit appartement conviendra à un étudiant ou personne seule désirant un logement individuel pour quelques nuits par semaine et pour une durée courte.
    Une pièce de 10 m2 avec faible hauteur sous plafond (ne convient pas à une personne de grande taille). Une salle de bain avec douche et WC. Une kitchenette séparée.
    Très bien situé au pied du métro Cormontaigne.
    Bail court (3 mois renouvelable).
    500 € toute charges comprises (wifi et ménage inclus)"
  )

studio_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1532944220/studio/sejour.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532944221/studio/cuisine.jpg"]

studio_array.each do |url|
  appart303.remote_photo_url = url
end

studio_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = studio
  photo.save!
end
