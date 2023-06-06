# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Profile.destroy_all
Event.destroy_all
Friendship.destroy_all
GroupFriendship.destroy_all
Group.destroy_all
Comment.destroy_all
Booking.destroy_all
Bookmark.destroy_all
Invitation.destroy_all

puts "Creating private users..."
simon = User.create(email: "simon@test.com", password: "test1234")
carlos = User.create(email: "carlos@test.com", password: "test1234")
harris = User.create(email: "harris@test.com", password: "test1234")
marien = User.create(email: "marien@test.com", password: "test1234")
john = User.create(email: "john@test.com", password: "test1234")
sophie = User.create(email: "sophie@test.com", password: "test1234")
marc = User.create(email: "marc@test.com", password: "test1234")
jose = User.create(email: "jose@test.com", password: "test1234")
anna = User.create(email: "anna@test.com", password: "test1234")
fred = User.create(email: "fred@test.com", password: "test1234")
paul = User.create(email: "paul@test.com", password: "test1234")
federica = User.create(email: "federica@test.com", password: "test1234")
tina = User.create(email: "tina@test.com", password: "test1234")
andrea = User.create(email: "andrea@test.com", password: "test1234")


puts "Creating profile for private users..."
simon_profile = Profile.new(first_name: "Simon", last_name: "Hu", username: "spicysimonroll", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
simon_profile.user = simon
simon_profile.save
carlos_profile = Profile.new(first_name: "Carlos", last_name: "Peña", username: "carlospa23", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
carlos_profile.user = carlos
carlos_profile.save
harris_profile = Profile.new(first_name: "Harris", last_name: "Grant", username: "harristreen", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
harris_profile.user = harris
harris_profile.save
marien_profile = Profile.new(first_name: "Marien", last_name: "Irzykiewicz", username: "marienirzyk", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
marien_profile.user = marien
marien_profile.save
john_profile = Profile.new(first_name: "John", last_name: "Smith", username: "johnnyS", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
john_profile.user = john
john_profile.save
sophie_profile = Profile.new(first_name: "Sophie", last_name: "Johnson", username: "sophieee", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
sophie_profile.user = sophie
sophie_profile.save
marc_profile = Profile.new(first_name: "Marc", last_name: "Williams", username: "marcWill", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
marc_profile.user = marc
marc_profile.save
jose_profile = Profile.new(first_name: "Jose", last_name: "Rodriguez", username: "elRodrigo", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
jose_profile.user = jose
jose_profile.save
anna_profile = Profile.new(first_name: "Anna", last_name: "Brown", username: "brownies", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
anna_profile.user = anna
anna_profile.save
fred_profile = Profile.new(first_name: "Fred", last_name: "Garcia", username: "garcield", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
fred_profile.user = fred
fred_profile.save
paul_profile = Profile.new(first_name: "Paul", last_name: "Wilson", username: "wilsoooon", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
paul_profile.user = paul
paul_profile.save
federica_profile = Profile.new(first_name: "Federica", last_name: "Nutella", username: "nutellaLove", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
federica_profile.user = federica
federica_profile.save
tina_profile = Profile.new(first_name: "Tina", last_name: "Pozzuoli", username: "pozzii", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
tina_profile.user = tina
tina_profile.save
andrea_profile = Profile.new(first_name: "Andrea", last_name: "Miller", username: "theMiller", address: "C/ del Bruc, 149, 08037 Barcelona", is_business: false)
andrea_profile.user = andrea
andrea_profile.save

puts "Creating business users..."
business1 = User.create(email: "business1@test.com", password: "test1234")
business2 = User.create(email: "business2@test.com", password: "test1234")
business3 = User.create(email: "business3@test.com", password: "test1234")
business4 = User.create(email: "business4@test.com", password: "test1234")

puts "Creating profile for business users..."
business1_profile = Profile.new(first_name: "", last_name: "", username: "StellarEvents", address: "Carrer de Mallorca, 123, 08036 Barcelona, Spain", is_business: true)
business1_profile.user = business1
business1_profile.save
business2_profile = Profile.new(first_name: "", last_name: "", username: "Dreamscape", address: "Avinguda Diagonal, 456, 08037 Barcelona, Spain", is_business: true)
business2_profile.user = business2
business2_profile.save
business3_profile = Profile.new(first_name: "", last_name: "", username: "EnchantedBCN", address: "Passeig de Gràcia, 789, 08008 Barcelona, Spain", is_business: true)
business3_profile.user = business3
business3_profile.save
business4_profile = Profile.new(first_name: "", last_name: "", username: "SpectraEvents", address: "Plaça de Catalunya, 234, 08002 Barcelona, Spain", is_business: true)
business4_profile.user = business4
business4_profile.save

puts "Creating public events..."
businesses = [business1, business2, business3, business4]
public_event1 = Event.new(
  title: "Summer Music Festival",
  address: "Plaça del Fòrum, 1, 08019 Barcelona, Spain",
  description: "Join us for a lively music festival celebrating the summer vibes. Enjoy performances by local bands and DJs, food stalls, and a vibrant atmosphere.",
  category: "Music",
  start_date: "2023-07-15",
  end_date: "2023-07-17",
  is_private: false
)
public_event1.user = businesses[rand(0..3)]
public_event1.save
public_event2 = Event.new(
  title: "Gastronomy Fair",
  address: "Avinguda de la Reina Maria Cristina, 08004 Barcelona, Spain",
  description: "Discover the flavors of Barcelona at the Gastronomy Fair. Indulge in delicious tapas, local wines, and culinary delights from renowned chefs.",
  category: "Food",
  start_date: "2023-06-15",
  end_date: "2023-06-20",
  is_private: false
)
public_event2.user = businesses[rand(0..3)]
public_event2.save
public_event3 = Event.new(
  title: "Art Exhibition: Urban Perspectives",
  address: "Carrer de Montcada, 15, 08003 Barcelona, Spain",
  description: "Explore the vibrant urban art scene at our exhibition. Immerse yourself in a collection of thought-provoking artworks created by local and international artists.",
  category: "Art",
  start_date: "2023-07-05",
  end_date: "2023-07-31",
  is_private: false
)
public_event3.user = businesses[rand(0..3)]
public_event3.save
public_event4 = Event.new(
  title: "Barcelona Fashion Week",
  address: "Recinte Modernista de Sant Pau, Carrer de Sant Quintí, 08041 Barcelona, Spain",
  description: "Experience the latest trends and styles at Barcelona Fashion Week. Get inspired by runway shows, designer showcases, and fashion talks by industry experts.",
  category: "Fashion",
  start_date: "2023-07-15",
  end_date: "2023-07-15",
  is_private: false
)
public_event4.user = businesses[rand(0..3)]
public_event4.save
public_event5 = Event.new(
  title: "Sports Charity Run",
  address: "Parc de la Ciutadella, 08003 Barcelona, Spain",
  description: "Participate in a charity run to support local sports initiatives. Lace up your running shoes and join us for a fun-filled day of fitness and community spirit.",
  category: "Sports",
  start_date: "2023-07-15",
  end_date: "2023-07-15",
  is_private: false
)
public_event5.user = businesses[rand(0..3)]
public_event5.save
public_event6 = Event.new(
  title: "Cinema Under the Stars",
  address: "Plaça dels Àngels, 1, 08001 Barcelona, Spain",
  description: "Enjoy classic movies under the starry sky. Grab your blankets and popcorn, and immerse yourself in the magic of cinema in a unique open-air setting.",
  category: "Film",
  start_date: "2023-07-28",
  end_date: "2023-07-30",
  is_private: false
)
public_event6.user = businesses[rand(0..3)]
public_event6.save
public_event7 = Event.new(
  title: "Tech Conference: Innovate Barcelona",
  address: "Fira Barcelona Montjuïc, Av. de la Reina Maria Cristina, 08004 Barcelona, Spain",
  description: "Join industry leaders, innovators, and tech enthusiasts at Innovate Barcelona. Explore the latest trends, attend insightful talks, and network with like-minded individuals.",
  category: "Technology",
  start_date: "2023-06-20",
  end_date: "2023-06-25",
  is_private: false
)
public_event7.user = businesses[rand(0..3)]
public_event7.save
public_event8 = Event.new(
  title: "Dance Workshop: Salsa Fiesta",
  address: "Carrer de Balmes, 08007 Barcelona, Spain",
  description: "Put on your dancing shoes and join us for an exciting salsa workshop. Learn new moves, enjoy energetic music, and dance the night away with fellow enthusiasts.",
  category: "Dance",
  start_date: "2023-06-20",
  end_date: "2023-07-31",
  is_private: false
)
public_event8.user = businesses[rand(0..3)]
public_event8.save
public_event9 = Event.new(
  title: "Wine Tasting Evening",
  address: "Carrer de Roger de Llúria, 08009 Barcelona, Spain",
  description: "Experience a delightful evening of wine tasting. Discover a variety of local and international wines, learn about different flavors, and indulge in gourmet pairings.",
  category: "Food & Drink",
  start_date: "2023-07-15",
  end_date: "2023-07-31",
  is_private: false
)
public_event9.user = businesses[rand(0..3)]
public_event9.save
public_event10 = Event.new(
  title: "Yoga Retreat: Mindful Escapes",
  address: "Carrer del Rosselló, 08029 Barcelona, Spain",
  description: "Embark on a rejuvenating yoga retreat in the heart of Barcelona. Relax your mind, nourish your body, and find inner peace through yoga, meditation, and wellness activities.",
  category: "Wellness",
  start_date: "2023-07-03",
  end_date: "2023-07-05",
  is_private: false
)
public_event10.user = businesses[rand(0..3)]
public_event10.save

puts "Creating private events..."
private_users = [simon, carlos, harris, marien]
private_event1 = Event.new(
  title: "Jane's Birthday Bash",
  address: "123 Main Street, Barcelona, Spain",
  description: "Join us for a night of celebration as we honor Jane's birthday! There will be music, dancing, and lots of fun.",
  category: "Birthday Party",
  start_date: "2023-06-23",
  end_date: "2023-06-23",
  is_private: true
)
private_event1.user = private_users[rand(0..3)]
private_event1.save
private_event2 = Event.new(
  title: "Midsummer Night Music Festival",
  address: "Plaça del Fòrum, Barcelona, Spain",
  description: "Celebrate the enchanting Midsummer Night with a music festival under the starry sky. Enjoy performances by renowned artists, mesmerizing light shows, and a magical atmosphere.",
  category: "Music Festival",
  start_date: "2023-06-21",
  end_date: "2023-06-24",
  is_private: true
)
private_event2.user = private_users[rand(0..3)]
private_event2.save
private_event3 = Event.new(
  title: "Barcelona Food Truck Fiesta",
  address: "Parc de la Ciutadella, Barcelona, Spain",
  description: "Indulge in a culinary adventure at the Food Truck Fiesta. Discover a variety of mouth-watering cuisines from food trucks, enjoy live music, and soak in the vibrant ambiance.",
  category: "Food Festival",
  start_date: "2023-06-27",
  end_date: "2023-06-30",
  is_private: true
)
private_event3.user = private_users[rand(0..3)]
private_event3.save
private_event4 = Event.new(
  title: "Barcelona Beach Volleyball Championship",
  address: "Nova Icaria Beach, Barcelona, Spain",
  description: "Witness the thrilling Barcelona Beach Volleyball Championship as top teams compete for glory on the sandy shores. Cheer for your favorites and soak up the beach vibes.",
  category: "Sports Event",
  start_date: "2023-07-05",
  end_date: "2023-07-09",
  is_private: true
)
private_event4.user = private_users[rand(0..3)]
private_event4.save
private_event5 = Event.new(
  title: "Barcelona Street Art Festival",
  address: "Various Locations, Barcelona, Spain",
  description: "Experience the vibrant street art scene at the Barcelona Street Art Festival. Discover stunning murals, live art performances, workshops, and immerse yourself in creativity.",
  category: "Art Festival",
  start_date: "2023-07-10",
  end_date: "2023-07-16",
  is_private: true
)
private_event5.user = private_users[rand(0..3)]
private_event5.save
private_event6 = Event.new(
  title: "Barcelona Wine & Tapas Tour",
  address: "Various Venues, Barcelona, Spain",
  description: "Embark on a gastronomic adventure through the Barcelona Wine & Tapas Tour. Explore the city's culinary delights with a curated selection of wines and tapas pairings.",
  category: "Food & Drink",
  start_date: "2023-07-18",
  end_date: "2023-07-21",
  is_private: true
)
private_event6.user = private_users[rand(0..3)]
private_event6.save
private_event7 = Event.new(
  title: "Barcelona Electronic Music Festival",
  address: "Poble Espanyol, Barcelona, Spain",
  description: "Immerse yourself in the world of electronic music at the Barcelona Electronic Music Festival. Experience electrifying DJ sets, immersive light shows, and dance all night long.",
  category: "Music Festival",
  start_date: "2023-07-25",
  end_date: "2023-07-29",
  is_private: true
)
private_event7.user = private_users[rand(0..3)]
private_event7.save
private_event8 = Event.new(
  title: "Barcelona Fashion Week",
  address: "Fira Barcelona Montjuïc, Barcelona, Spain",
  description: "Discover the latest trends and styles at Barcelona Fashion Week. Experience captivating runway shows, designer exhibitions, and be inspired by the world of fashion.",
  category: "Fashion Event",
  start_date: "2023-07-31",
  end_date: "2023-08-04",
  is_private: true
)
private_event8.user = private_users[rand(0..3)]
private_event8.save
private_event9 = Event.new(
  title: "Barcelona Film Night",
  address: "Cinema Comedia, Barcelona, Spain",
  description: "Enjoy a night of cinema under the stars at Barcelona Film Night. Watch classic and contemporary films in an open-air setting, surrounded by the city's vibrant atmosphere.",
  category: "Film Screening",
  start_date: "2023-08-06",
  end_date: "2023-08-06",
  is_private: true
)
private_event9.user = private_users[rand(0..3)]
private_event9.save
private_event10 = Event.new(
  title: "Barcelona Film Night",
  address: "Cinema Comedia, Barcelona, Spain",
  description: "Enjoy a night of cinema under the stars at Barcelona Film Night. Watch classic and contemporary films in an open-air setting, surrounded by the city's vibrant atmosphere.",
  category: "Film Screening",
  start_date: "2023-08-06",
  end_date: "2023-08-06",
  is_private: true
)
private_event10.user = private_users[rand(0..3)]
private_event10.save
puts "Done!"
