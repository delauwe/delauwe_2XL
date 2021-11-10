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

alice = Apartment.create!(
  location: "In front of the metro station Cormontaigne",
  size: 130,
  number_of_rooms: 5,
  name: "Alice D. - Lille",
  price: 435,
  category: "flatshare",
  nature: "flatshare",
  bathroom: 3,
  toilet: 3,
  terrace: true,
  washing_machine: false,
  washing_room: true,
  dining_room: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("Apr 1 2022"),
  description: " Charming and spacious 180 sqm, 3 floors, furnished with 5 bedrooms. Young flatmates. Metro station Cormontaigne.
Large living room, terrace and large open kitchen, 4 large bedrooms including 2 in the cellar + 1 smaller room upstairs, 2 bathrooms, 1 shower room, 3 toilets and a laundry.
Lease of 6 months: 435 € / month per room + 140 € of charges: Wifi (fiber optic), co-ownership, Electricity, 1 hour of cleaning per week.
Short lease: price can be negotiated."
  )
# alice.save!

Apartment::Translation.create(
  apartment_id: alice.id,
  locale: "fr",
  nature: "coloc",
  location: "Au pied du métro Cormontaigne",
  description: "Charme et espace de 180 m² au sol triplex meublé de 5 chambres. Colocation jeunes salariés. Métro Cormontaigne.
En rez-de-chaussée : grand séjour sur terrasse et grande cuisine ouverte. 4 grandes chambres dont 2 en cave anglaise + 1 chambre plus petite à l'étage, buanderie. 2 salles de bains, 1 salle d'eau et 3 WCs. Laverie.
Bail de 6 mois : 435 €/mois par chambre + 140 € de charges : Wifi (fibre optique), copropriété, Électricité, 1h de ménage par semaine.
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
  name: "Camille D. - Lille",
  category: "flatshare",
  nature: "flatshare",
  price: 400,
  bathroom: 1,
  terrace: true,
  toilet: 1,
  shower_room: 1,
  living_room: true,
  availability: Date.parse("jul 01 2023"),
  description: "In the Vauban Neighborhood. In a quiet residence, on the 5th and last floor with elevator.
  5 rooms, 83 sqm, fully equipped and furnished, excellent condition: living room, kitchen with dishwasher, south-west facing terrace, shower room, separate toilet, washing and drying machine, 4 bedrooms, all with many closets, desks and good bedding state.
  Lease of 12 months: 400€/month + 150€ charges: Wifi (fiber optic), co-ownership, electricity, 1 hour of cleaning per week. Short lease: price can be negotiated."
)

Apartment::Translation.create(
  apartment_id: camille.id,
  locale: "fr",
  location: "Au pied du métro Port de Lille",
  nature: "coloc",
  description: "Quartier Vauban. Dans résidence calme, au 5e et dernier étage, ascenseur. 5 pièces 83 m², entièrement équipé et meublé, excellent état : séjour, cuisine américaine avec lave-vaisselle, terrasse exposée sud-ouest, salle de douche, wc séparés, lave et sèche-linge, 4 chambres toutes avec nombreux placards, literie bon état, bureaux.
  Bail de 12 mois : 400 € /mois + 150 € charges : Wifi (fibre optique), copropriété, Électricité, 1h de ménage par semaine.
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
  location: "In front of the metro station Cormontaigne",
  size: 70,
  number_of_rooms: 3,
  name: "Claire D. - Lille",
  category: "apartment",
  nature: "apartment",
  price: 1000,
  living_room: true,
  terrace: true,
  bathroom: 1,
  shower_room: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  kitchen: true,
  availability: Date.parse("aug 1 2022"),
  description: " Very typical T3 fully furnished and equipped. 2 bedrooms + one in a mezzanine. Beautiful terrace. Ideal for a couple with 1 child or a flatshare consisting of 2/3 young professionals. Ideal location in front of the metro, bus and V'Lille stations.
 Short-term rental 6 months maximum renewable.
 1000€/ month + 450€  charges - cleaning 1 hour / week, all charges included.
 Possibility to rent a box in extra.
"
)

Apartment::Translation.create(
  apartment_id: claire.id,
  locale: "fr",
  location: "Au pied du métro Cormontaigne",
  nature: "appart",
  description: "T3 de charme entièrement meublé et équipé. 2 chambres + mezzanine. Belle terrasse. Idéal couple avec 1 enfant ou  colocation constituée de 2/3 jeunes actifs. Emplacement top au pied du métro, bus et station V'Lille.
  Location courte durée 6 mois maximum renouvelable.
  1000€/mois + 450€ de charges - ménage 1h/semaine.
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
  size: 130,
  number_of_rooms: 4,
  name: "Francine D. - Lille",
  category: "apartment",
  nature: "apartment",
  price: 1900,
  living_room: true,
  bathroom: 2,
  toilet: 1,
  washing_machine: true,
  kitchen: true,
  availability: Date.parse("jul 1 2022"),
  description: " In the Vauban neighbourhood, square Maréchal Leclerc. 4 rooms in shared flat with 4 young flatmates, spacious apartment. Apartment, excellent condition, on the ground floor (double access), in a luxury building (secure entrance), fully furnished and equipped, 5 beautiful spacious rooms, all with wardrobes, desks, recent bedding, very well equipped kitchen ( American fridge, dishwasher), 2 bathrooms, 2 toilets. Washing machine, tumble dryer. Charges include wifi, electricity, co-ownership  fees, 2h cleaning per week.
Possibility to rent parking or box in extra.
1900€/ month + 450 charges. (5 bedrooms or short lease: price on request)
"
)

Apartment::Translation.create(
  apartment_id: francine.id,
  locale: "fr",
  location: "Place Maréchal Leclerc - Vauban",
  nature: "appart",
  description: "Quartier Vauban, Place Maréchal Leclerc. 4 chambres pour colocation de jeunes 4 actifs, spacieux appartement.
  Appartement excellent état au rez-de-chaussée (double accès), dans un immeuble de standing (entrée sécurisée), entièrement meublé et équipé, 4 belles chambres spacieuses, toutes avec placards, bureau, literie récente, cuisine très bien équipée (frigo américain, lave-vaisselle), 2 salles de bains, 2 wc. Lave-linge, sèche-linge.
  Les charges comprennent wifi, électricité, charges de copropriété, 2 h ménage par semaine.
  Parking ou box en sus.
  1900€/ mois + 450 de charges. (5 chambres ou bail court : prix sur demande)"
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
  name: "Jules D. - Lille",
  category: "apartment",
  nature: "apartment",
  price: 2340,
  bathroom: 2,
  toilet: 2,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("Jan 1 2022"),
  description: "*** FULL FLAT - ONE CONTRAT.**** Nice apartment of 140 m2 in excellent condition, on the 7th and last floor, 6 bedrooms furnished with large closets, desk, bedding, 2 bathrooms, 2 toilets, kitchen (washing machine and dishwasher), very functional. American kitchen, living room.
 Lease of 6 months: 2940 euro charges included (wifi, co-ownership fees, electricity, 2 hour of cleaning per week). Short lease: price to negotiate."
)

Apartment::Translation.create(
  apartment_id: jules.id,
  locale: "fr", location: "Place Maréchal Leclerc - Vauban", nature: "coloc",
  description: "***Bail solidaire **** Bel appartement de 140 m2 excellent état , au 7ème et dernier étage , 6 belles chambres meublées avec grands placards, bureau, literie, 2 salles de bain, 2 WC, cuisine équipée (lave linge et lave vaisselle), très fonctionnel. Cuisine américaine, séjour. Salle de douche.
  Bail de 6 mois : loyer 2940 euro charges comprises (wifi, copropriété, électricité, 2h de ménage par semaine). Bail court : prix à négocier.")

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
  name: "Lucie D. - Lille",
  category: "flatshare",
  nature: "flatshare",
  price: 400,
  bathroom: 1,
  shower_room: 1,
  toilet: 2,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("Jul 1 2022"),
  description: "In the Vauban neighbourhood. Flatshare of  4 young professionals, very calm, non smoking.
Beautiful and charming apartment, fully furnished and equipped, in front of the metro station Cormontaigne.
Very close to the Catho University, 2nd, 3rd and last floor: kitchen, living room, 4 bedrooms, separate toilet, shower room.
Lease of 6 months: 400 € / month + 150 € charges (wifi, co-ownership fees, electricity, 1 hour of cleaning per week).
Short lease: price to negotiate."
)


Apartment::Translation.create(
  apartment_id: lucie.id,
  locale: "fr", location: "Au pied du métro Cormontaigne", nature: "coloc",
  description: "Quartier Vauban.colocation 4 jeunes actifs, très calmes, non fumeurs.
    Bel appartement de charme et standing, entièrement meublé et équipé, au pied du métro Cormontaigne.
    Très proche de la Catho, au 2éme et 3éme et dernier étage : cuisine équipée, séjour, 4 chambres, wc séparés, salle de douche.
    Bail de 6 mois : 400  €/mois + 150 € charges (wifi, copropriété, électricité, 1h de ménage par semaine). Bail court : prix à négocier.")


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
  name: "Odette D. - Roubaix",
  category: "apartment",
  nature: "apartment",
  price: 1160,
  bathroom: 1,
  shower_room: 1,
  toilet: 1,
  washing_room: false,
  washing_machine: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("sep 15 2022"),
  description: "Beautiful apartment of 83 sqm in  excellent state, on the 5th/top floor, 4 nice rooms furnished with big closets, desk, bedding, 1 shower room, 1 water room, 1 toilet, equipped kitchen (dishwasher and washing machine), very functional. American kitchen.
1160€/ month + 440€ charges (wifi, co-ownership fees, electricity, 1 hour of cleaning per week). Fee for short lease (less than 12 months)"
)

Apartment::Translation.create(
  apartment_id: odette.id,
  locale: "fr",
  location: "Jean-Baptiste Lebas - Roubaix", nature: "coloc",
  description: "Bel appartement de 83 m2 excellent état, au 5ème et dernier étage , 4 belles chambres meublées avec grands placards, bureau, literie, 1 salle de douche, 1 salle d’eau, 1 WC, cuisine équipée (lave linge et lave vaisselle), très fonctionnel. Cuisine américaine.
  1160€/ mois + 440€ de charges (wifi, copropriété, électricité, 1h de ménage par semaine). Frais de dossier pour bail court (inférieur à 12 mois)"
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
  name: "Appart 302  - Lille",
  price: 750,
  category: "apartment",
  nature: "apartment",
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
  availability: Date.parse("Jan 01 2022"),
  description: "One bedroom apartment of 45 sqm fully furnished, bright, very good condition. Ideal for an executive on the move (relocation) or couple without children. In the Vauban neighborhood, located in front of the metro station and several shops. On the 2nd floor of an old house, beautiful 2 rooms (1 bedroom and 1 living room). Laundry.
750€/ month +  200€ charges: weekly cleaning, wifi.
Lease of 1 to 6 months.  
Garage possible in addition.
Short term to negotiate.
"
)

Apartment::Translation.create(
  apartment_id: appart302.id,
  locale: "fr",
  location: "Au pied du métro Cormontaigne", nature: "appart",
  description: "T2 charme et proximité. Idéal cadre en déplacement (relocation) ou couple sans enfant.
  Courte durée à négocier. Quartier Vauban, situé au pied du métro et commerces.
  Au 2ème étage d'une maison ancienne, très beau 2 pièces de 45 m² entièrement meublé, lumineux, très bon état.
  Ménage hebdomadaire. Lingerie. Tous services Wifi. (Bail de 1 à 6 mois). 750€/mois + 200€ de charges.
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
  name: "Appart 303 - Lille",
  category: "apartment",
  nature: "apartment",
  price: 650,
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
  availability: Date.parse("Jul 1 2022"),
  description: "Ideal for an executive on the move (relocation) or couple without children .In the Vauban neighborhood, located  in front of the metro station and several shops .In the 3rd floor of a beautiful old building, high ceiling rooms entirely furnished, bright and in excellent state.
    Lease from 1 to 6 months.
    Lease 6 months: 650 €/ month + 200 € charges, weekly cleaning, laundry, wifi.
    Short term possible to negotiate
    Garage possible in addition."
)

Apartment::Translation.create(
  apartment_id: appart303.id,
  locale: "fr", location: "Au pied du métro Cormontaigne", nature: "appart",
  description: "Idéal cadre en déplacement (relocation) ou couple sans enfant. Quartier Vauban, situé au pied métro et commerces. Au 3ème étage d'un bel immeuble ancien, beaux volumes entièrement meublés, lumineux, excellent état. Ménage hebdomadaire. Lingerie. Tous services Wifi.
  (Bail de 1 à 6 mois).
  Bail 6 mois à 650 €/mois + 200€ de charges. Courte durée possible à négocier. Garage possible en sus."
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
  name: "Studio 28S - Lille",
  category: "apartment",
  nature: "apartment",
  price: 350,
  bathroom: 1,
  toilet: 1,
  washing_room: true,
  washing_machine: false,
  living_room: true,
  kitchen: true,
  availability: Date.parse("Jul 01 2022"),
  description: "This small apartment is suitable for a student or single person looking for individual accommodation for a few nights a week and for a short duration.
   A room of 14 m2 with low ceiling height (not suitable for a tall person). A bathroom with shower and toilet. A separate kitchenette.
   Very well located in front of the metro station Cormontaigne.
   Short lease (3 months renewable).
   350€/mois + 150€ charges (wifi and cleaning included)"
)

Apartment::Translation.create(
  apartment_id: studio.id,
  locale: "fr",
  location: "Au pied du métro Cormontaigne", nature: "appart",
  description: "Ce petit appartement conviendra à un étudiant ou personne seule désirant un logement individuel pour quelques nuits par semaine et pour une durée courte.
    Une pièce de 14 m2 avec faible hauteur sous plafond (ne convient pas à une personne de grande taille). Une salle de bain avec douche et WC. Une kitchenette séparée.
    Très bien situé au pied du métro Cormontaigne.
    Bail court (3 mois renouvelable).
    350€/mois + 150€ de charges (wifi et ménage inclus)"
  )

studio_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1532944220/studio/sejour.jpg",
"https://res.cloudinary.com/elsaszymczak/image/upload/v1532944221/studio/cuisine.jpg"]

studio_array.each do |url|
  studio.remote_photo_url = url
end

studio_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = studio
  photo.save!
end

rollin = Apartment.create(
  location: "Luxembourg, Val Fleury bus stop, 10 minutes walking from the tram station Etoile",
  size: 107,
  number_of_rooms: 4,
  name: "Rollin D. - Luxembourg",
  category: "flatshare",
  nature: "flatshare",
  price: 765,
  bathroom: 2,
  toilet: 2,
  terrace: true,
  washing_room: true,
  washing_machine: true,
  living_room: true,
  kitchen: true,
  availability: Date.parse("1 feb 2022"),
  description: "In a beautiful recent apartment of 107m2, on the ground floor of a small condominium, 10 minutes from the station Tram Etoile, we offer 4 rooms for rent in individual contract. It is an international flat for young actives.\n
    Located rue du Rollingergrund at the Val Fleurie bus stop, located 10 minutes from historical city center. By tram, 20 minutes from Kirchberg (Auchan shopping center, Kinepolis cinemas, ...).\n
    \n
    In the flat, you will share the living room-kitchen, 2 bathrooms, 2 toilets, the laundry room with washing machines+ dryer.\n
    In fine weather, you will enjoy the large terrace all around the apartment.\n
    Possibility of parking a vehicle or a bike in the garage (extra).\n
    \n
    The charges include: cold and hot water, electricity, heating, wifi, charge of the building and cleaning for 1 to 2 hours per week.\n
    \n
    The price is 765€ + 155€ charges: 920€ all charges included."
)

Apartment::Translation.create(
  apartment_id: rollin.id,
  locale: "fr",
  location: "Luxembourg, arrêt Val Fleury, 10 minutes à pied de la station de tram étoile",
  nature: "coloc",
  description: "Dans un bel appartement récent de 107m2, au RDC d'une petite copropriété, à 10 minutes de la station de Tram Etoile, nous proposons 4 chambres à louer en contrat individuel. Il s'agit d'une colocation internationale de jeunes actifs.\n
    Rue du Rollingergrund au niveau de l'arrêt de bus Val Fleurie vous êtes situé à 10 min du centre historique. En Tram, à 20 minutes du Kircherg (centre commercial Auchan, cinémas).\n

    Dans la coloc, vous partagerez le séjour-cuisine, 2 salles de bain, 2 wc, la buanderie (lave-linge + sèche linge).\n
    Au beaux jours, vous apprécierez la grande terrasse tout autour de l'appartement.\n
    Possibilité de stationner un véhicule ou un vélo au garage (en sus).\n
    \n
    Les charges comprennent : eau froide et chaude, électricité, chauffage, wifi, charges de l'immeuble et le ménage à raison de 1 à 2 heures par semaine.\n
    \n
    Le prix est de 765 € + 155 € de charges soit 920 € toutes charges comprises."
)

rollin_array = ["https://res.cloudinary.com/elsaszymczak/image/upload/v1541647628/Rollin%20D./living_room_2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647618/Rollin%20D./living_room_3.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647616/Rollin%20D./living_room.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647615/Rollin%20D./terrace.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647615/Rollin%20D./kitchen_2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647614/Rollin%20D./kitchen_1.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647617/Rollin%20D./room_1.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647618/Rollin%20D./room_2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647617/Rollin%20D./room_3.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647615/Rollin%20D./room_4.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647614/Rollin%20D./bathroom.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647614/Rollin%20D./bathroom_2.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541647615/Rollin%20D./corridor.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1539179963/Rollin%20D./Coloc_Rollin_D_-_Plan.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541730650/Rollin%20D./Coloc_Rollin_D_Re%CC%81seau_Bus_Tram_1.jpg",
  "https://res.cloudinary.com/elsaszymczak/image/upload/v1541730552/Rollin%20D./Coloc_Rollin_D_Re%CC%81seau_Bus_Tram_Zoom_1.jpg"

]

rollin_array.each do |url|
  rollin.remote_photo_url = url
end

rollin_array.each do |url|
  photo = Photo.new(url: url)
  photo.apartment = rollin
  photo.save!
end

