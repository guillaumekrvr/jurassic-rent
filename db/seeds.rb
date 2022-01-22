# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Booking.destroy_all
Review.destroy_all
Animal.destroy_all
User.destroy_all

user = User.new(
  email: "papa@hotmail.fr",
  password: "toto10000"
)
user.save!
puts "User saved"

user = User.new(
  email: "maman@hotmail.fr",
  password: "toto10000"
)
user.save!
puts "User saved"

user = User.new(
  email: "frerot@hotmail.fr",
  password: "toto10000"
)
user.save!
puts "User saved"

user = User.new(
  email: "papi@hotmail.fr",
  password: "toto10000"
)
user.save!
puts "User saved"

user = User.new(
  email: "mamie@hotmail.fr",
  password: "toto10000"
)
user.save!
puts "User saved"

leonce = Animal.create(name: 'Léonce',age: '1784',specie: 'Spinosaure',diary: 'Carnivore',description: 'Il est très joueur (surtout avec les enfants)',address: '6 Rue Montcalm, Paris',price_per_day: '198',size: '1800',user: user)
leonce.save!
puts "Animal #{leonce.name}"

animal = Animal.create(name: 'Adrien',age: '2403',specie: 'T-Rex',diary: 'Carnivore',description: 'Super animal et vraiment très gentil',address: 'Calle 13, Bogotá, Colombie',price_per_day: '320',size: '1930',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Patrick',age: '1503',specie: 'Brachiosaure',diary: 'Carnivore',description: 'Une beau dinosaure qui saura tenir dans votre appartement',address: '4 Chemin du bois, 69300, Caluire',price_per_day: '99',size: '2483',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Jack',age: '6410',specie: 'Acrocanthosaurus',diary: 'Carnivore',description: 'Le dinosaure dont tout le monde rêve étant enfant',address: 'Namibia - Dubaï - Émirats arabes unis',price_per_day: '176',size: '1628',user: user)
animal.save!
puts "Animal #{animal.name}"

lena = Animal.create(name: 'Léna',age: '374',specie: 'Therizinosaurus',diary: 'Carnivore',description: 'Vous allez adorer le promener dans les parcs !',address: '10 Rue du Caire, 75002, Paris',price_per_day: '125',size: '1832',user: user)
lena.save!
puts "Animal #{lena.name}"

animal = Animal.create(name: 'Valentine',age: '5437',specie: 'Baryonyx',diary: 'Omnivore',description: 'Une bonne tête pour amuser la gallerie',address: 'Embassy of France, Noursoultan, Kazakhstan',price_per_day: '147',size: '1734',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Guillaume',age: '1533',specie: 'Apatosaure',diary: 'Omnivore',description: 'Apatosaure mais pas apathique',address: 'Islamabad, Pakistan',price_per_day: '56',size: '1329',user: user)
animal.save!
puts "Animal #{animal.name}"

nathan = Animal.create(name: 'Nathan',age: '7352',specie: 'Ceratosaurus',diary: 'Omnivore',description: 'Nathan est THE dinosaure pour jouer',address: 'Berlin, Allemagne',price_per_day: '43',size: '2945',user: user)
nathan.save!
puts "Animal #{nathan.name}"

animal = Animal.create(name: 'Sador',age: '4371',specie: 'Carnotaure',diary: 'Omnivore',description: 'Un carnotaure comme on en fait plus..',address: 'Rome, Italie',price_per_day: '193',size: '3846',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Eliott',age: '53472',specie: 'Dilophosaure',diary: 'Omnivore',description: 'Le dinosaure qui va tout déchirer',address: 'Lisbonne, Portugal',price_per_day: '287',size: '6183',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Tony',age: '1732',specie: 'Cryolophosaurus',diary: 'Herbivore',description: 'Rien à dire ! Juste allez y',address: 'Bratislava, Slovaquie',price_per_day: '256',size: '1732',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Kilian',age: '2453',specie: 'Compsognathus',diary: 'Herbivore',description: 'Pas d ennui avec Kiki. Toujours prêt à attaquer',address: 'Moscou, Russie',price_per_day: '283',size: '1284',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Jordan',age: '3846',specie: 'Tricératops',diary: 'Herbivore',description: 'Comme son nom l indique, Jordan saura vous envoyer dans les AIR',address: 'London, Royaume-Uni',price_per_day: '193',size: '1352',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Maria',age: '2901',specie: 'Polacanthus',diary: 'Herbivore',description: 'Maria la Polacanthus.. Affaire à saisir',address: 'Cape Town, Afrique du Sud',price_per_day: '462',size: '1524',user: user)
animal.save!
puts "Animal #{animal.name}"

animal = Animal.create(name: 'Cornelius',age: '2104',specie: 'Ptéranodon',diary: 'Herbivore',description: 'Mignon et souriant pour les occasions',address: 'Islamabad, Pakistan',price_per_day: '194',size: '1523',user: user)
animal.save!
puts "Animal #{animal.name}"


review = Review.new(
  comment: "Fais peur à Madame Michu de la compta ",
  rating: "2",
  animal: lena
)
review.save!
puts "Review saved"

review = Review.new(
  comment: "Pas sympa",
  rating: "3",
  animal: lena
)
review.save!
puts "Review saved"

review = Review.new(
  comment: "A bouffer mon gosse. ",
  rating: "1",
  animal: lena
)
review.save!
puts "Review saved"

review = Review.new(
  comment: "Ne sent pas bon ! Beurk",
  rating: "2",
  animal: lena
)
review.save!
puts "Review saved"

review = Review.new(
  comment: "Super dinosaure ",
  rating: "5",
  animal: leonce
)
review.save!
puts "Review saved"

review = Review.new(
  comment: "Très sympa",
  rating: "5",
  animal: leonce
)
review.save!
puts "Review saved"

review = Review.new(
  comment: "Nous recommendons cet animal très fonctionnel et bien placé ",
  rating: "4",
  animal: leonce
)
review.save!
puts "Review saved"

review = Review.new(
  comment: "Vous ne serez pas déçu par la location de cet animal. Parfaitement équipe et très propre",
  rating: "5",
  animal: leonce
)
review.save!
puts "Review saved"
