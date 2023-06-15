# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Cleaning database..."
Profile.destroy_all
Event.destroy_all
Friendship.destroy_all
GroupFriendship.destroy_all
Group.destroy_all
Comment.destroy_all
Booking.destroy_all
Bookmark.destroy_all
Invitation.destroy_all
User.destroy_all

puts "Creating private users..."
carlos = User.create(email: "carlos@test.com", password: "test1234")
simon = User.create(email: "simon@test.com", password: "test1234")
harris = User.create(email: "harris@test.com", password: "test1234")
marien = User.create(email: "marien@test.com", password: "test1234")
florian = User.create(email: "florian@test.com", password: "test1234")
martin = User.create(email: "martin@test.com", password: "test1234")
pablo = User.create(email: "pablo@test.com", password: "test1234")
ade = User.create(email: "ade@test.com", password: "test1234")
laure = User.create(email: "laure@test.com", password: "test1234")
nestor = User.create(email: "nestor@test.com", password: "test1234")
giacomo = User.create(email: "giacomo@test.com", password: "test1234")
pato = User.create(email: "pato@test.com", password: "test1234")
ben = User.create(email: "ben@test.com", password: "test1234")
filip = User.create(email: "filip@test.com", password: "test1234")

private_users = [simon, harris, marien, florian, martin, pablo, ade, laure, nestor, giacomo, pato, ben, filip]

puts "Creating profile for private users..."
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053J34J604-46a3a9487bb8-512")
carlos_profile = Profile.new(first_name: "Carlos", last_name: "Peña", username: "carlospa23", address: "C/ del Bruc, 149, 08037 Barcelona", description: "I love playing beach volley, outdoor enthusiast, coding eager learner", is_business: false)
carlos_profile.user = carlos
carlos_profile.photo.attach(io: file, filename: "carlos.png", content_type: "image/png")
carlos_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053ZCNSC0Y-d53f45db6d41-512")
simon_profile = Profile.new(first_name: "Simon", last_name: "Hu", username: "spicysimonroll", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Passionate adventurer seeking thrilling experiences around the world", is_business: false)
simon_profile.user = simon
simon_profile.photo.attach(io: file, filename: "simon.png", content_type: "image/png")
simon_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U05330WCPK8-104b81622270-512")
harris_profile = Profile.new(first_name: "Harris", last_name: "Grant", username: "harristreen", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Creative problem solver with a knack for innovative solutions", is_business: false)
harris_profile.user = harris
harris_profile.photo.attach(io: file, filename: "harris.png", content_type: "image/png")
harris_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U05327GTDHU-7e43ec92b17a-512")
marien_profile = Profile.new(first_name: "Marien", last_name: "I", username: "marienirzyk", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Crypto enthusiast dedicated to exploring the latest advancements in the industry.", is_business: false)
marien_profile.user = marien
marien_profile.photo.attach(io: file, filename: "marien.png", content_type: "image/png")
marien_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U052UBBHD1D-1623d72e7c9b-512")
florian_profile = Profile.new(first_name: "Florian", last_name: "Johnson", username: "flojo", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Nature lover and environmental advocate striving to protect our planet", is_business: false)
florian_profile.user = florian
florian_profile.photo.attach(io: file, filename: "florian.png", content_type: "image/png")
florian_profile.save
file = URI.open("https://media.licdn.com/dms/image/D4E03AQHTf33RPF6nsg/profile-displayphoto-shrink_400_400/0/1686490715551?e=1692230400&v=beta&t=WTdRljN5KIj1qyj63DXvZviMgkK9Q8YSiTjDUdZ_R1g")
martin_profile = Profile.new(first_name: "Martin", last_name: "Dabber", username: "mdab", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Curious mind with a passion for unraveling the mysteries of the universe", is_business: false)
martin_profile.user = martin
martin_profile.photo.attach(io: file, filename: "martin.png", content_type: "image/png")
martin_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053BJTT1RA-5da71ecd8aea-512")
pablo_profile = Profile.new(first_name: "Pablo", last_name: "Williams", username: "pabloWill", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Empathetic listener and compassionate soul, ready to lend an ear", is_business: false)
pablo_profile.user = pablo
pablo_profile.photo.attach(io: file, filename: "pablo.png", content_type: "image/png")
pablo_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053FEREE9Z-46308cbe85b5-512")
ade_profile = Profile.new(first_name: "ade", last_name: "Rodriguez", username: "alRodrigo", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Fitness enthusiast committed to helping others achieve their wellness goals", is_business: false)
ade_profile.user = ade
ade_profile.photo.attach(io: file, filename: "ade.png", content_type: "image/png")
ade_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053FEUHE3U-df8905ff8dfa-512")
laure_profile = Profile.new(first_name: "Laure", last_name: "Brown", username: "labrownies", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Wordsmith and storyteller, weaving tales to captivate hearts and minds", is_business: false)
laure_profile.user = laure
laure_profile.photo.attach(io: file, filename: "laure.png", content_type: "image/png")
laure_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U05366TF9LM-a8784827c3bf-512")
nestor_profile = Profile.new(first_name: "Nestor", last_name: "Garcia", username: "nesto", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Social justice advocate striving for equality and positive change", is_business: false)
nestor_profile.user = nestor
nestor_profile.photo.attach(io: file, filename: "nestor.png", content_type: "image/png")
nestor_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053GRXUGLB-b09e64e9310a-512")
giacomo_profile = Profile.new(first_name: "Giacomo", last_name: "Wilson", username: "wilsoooon", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Food connoisseur with an insatiable appetite for culinary adventures", is_business: false)
giacomo_profile.user = giacomo
giacomo_profile.photo.attach(io: file, filename: "giacomo.png", content_type: "image/png")
giacomo_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U03B7TQPXKK-6577b0f4590a-512")
pato_profile = Profile.new(first_name: "Pato", last_name: "Nutella", username: "🦆", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Artistic soul expressing emotions and narratives through various mediums", is_business: false)
pato_profile.user = pato
pato_profile.photo.attach(io: file, filename: "pato.png", content_type: "image/png")
pato_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-UFD4SUGBX-a04ddaa08e20-512")
ben_profile = Profile.new(first_name: "Ben", last_name: "Pozzuoli", username: "bepo", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Lifelong learner passionate about personal growth and expanding horizons", is_business: false)
ben_profile.user = ben
ben_profile.photo.attach(io: file, filename: "ben.png", content_type: "image/png")
ben_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U02GDJ2SG69-5cb283eef0c3-512")
filip_profile = Profile.new(first_name: "Filip", last_name: "Miller", username: "filmil", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Aspiring entrepreneur fueled by ambition and driven to create a lasting impact in the business world", is_business: false)
filip_profile.photo.attach(io: file, filename: "filip.png", content_type: "image/png")
filip_profile.user = filip
filip_profile.save

puts "Creating business users..."
lewagonbcn = User.create(email: "lewagonbcn@test.com", password: "test1234")
business1 = User.create(email: "business1@test.com", password: "test1234")
business2 = User.create(email: "business2@test.com", password: "test1234")
business3 = User.create(email: "business3@test.com", password: "test1234")
business4 = User.create(email: "business4@test.com", password: "test1234")

puts "Creating profile for business users..."
file = URI.open("https://techla.pro/wp-content/uploads/2023/03/Le-Wagon-logo.png")
lewagonbcn_profile = Profile.new(first_name: "", last_name: "", username: "LeWagonBCN", address: "Carrer de Mallorca, 123, 08036 Barcelona, Spain", is_business: true)
lewagonbcn_profile.user = lewagonbcn
lewagonbcn_profile.photo.attach(io: file, filename: "lwbcn.png", content_type: "image/png")
lewagonbcn_profile.save
file = URI.open("https://static.wixstatic.com/media/08b213_0d0b53d2e1524a2b993b92bceecb7afe~mv2.jpg/v1/crop/x_102,y_87,w_489,h_287/fill/w_490,h_288,al_c,lg_1,q_80,usm_0.33_1.00_0.00,enc_auto/08b213_0d0b53d2e1524a2b993b92bceecb7afe~mv2.jpg")
business1_profile = Profile.new(first_name: "", last_name: "", username: "StellarEvents", address: "Carrer de Mallorca, 123, 08036 Barcelona, Spain", is_business: true)
business1_profile.user = business1
business1_profile.photo.attach(io: file, filename: "stellar.png", content_type: "image/png")
business1_profile.save
file = URI.open("https://www.citysearch.ae/uf/companies/8455/scape.png")
business2_profile = Profile.new(first_name: "", last_name: "", username: "Dreamscape", address: "Avinguda Diagonal, 456, 08037 Barcelona, Spain", is_business: true)
business2_profile.user = business2
business2_profile.photo.attach(io: file, filename: "dreamscape.png", content_type: "image/png")
business2_profile.save
file = URI.open("https://www.themoviedb.org/t/p/original/hAuWEVmEq7kD0fXFgvZjVrK9dOX.png")
business3_profile = Profile.new(first_name: "", last_name: "", username: "EnchantedBCN", address: "Passeig de Gràcia, 789, 08008 Barcelona, Spain", is_business: true)
business3_profile.user = business3
business3_profile.photo.attach(io: file, filename: "enchantedbcn", content_type: "image/png")
business3_profile.save
file = URI.open("https://images.squarespace-cdn.com/content/v1/5fa064f5ba377a5278be236f/1604360961964-L0ZP8XISJL8OUUXAFZ8Z/Logo_Linear_C_Colour.png?format=1500w")
business4_profile = Profile.new(first_name: "", last_name: "", username: "SpectraEvents", address: "Plaça de Catalunya, 234, 08002 Barcelona, Spain", is_business: true)
business4_profile.user = business4
business4_profile.photo.attach(io: file, filename: "spectra", content_type: "image/png")
business4_profile.save

puts "Creating public events..."
businesses = [business1, business2, business3, business4]
public_event1 = Event.new(
  title: "Summer Music Festival",
  address: "Plaça del Fòrum 1, Torino",
  description: "Italien fiesta.",
  category: "Music",
  start_date: "2023-07-15",
  end_date: "2023-07-17",
  is_private: false
)
public_event1.user = businesses[rand(0..3)]
public_event1.save
public_event2 = Event.new(
  title: "Gastronomy Fair",
  address: "Avinguda de la Reina Maria Crisben, Bilbao",
  description: "tapas tour in Bilbao center.",
  category: "Food",
  start_date: "2023-06-15",
  end_date: "2023-06-20",
  is_private: false
)
public_event2.user = businesses[rand(0..3)]
public_event2.save
public_event3 = Event.new(
  title: "Art Exhibition: Urban Perspectives",
  address: "Carrer de Montcada 15, Barcelona",
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
  address: "Recinte Modernista de Sant Pau, Carrer de Sant Quintí, Barcelona",
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
  address: "Parc de la Ciutadella, Barcelona",
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
  address: "Plaça dels Àngels, 1, Barcelona",
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
  address: "Fira Barcelona Montjuïc, Barcelona",
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
  address: "Carrer de Balmes, Barcelona",
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
  address: "Carrer de Roger de Llúria, Barcelona",
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
  address: "Carrer del Rosselló 56, Barcelona",
  description: "Embark on a rejuvenating yoga retreat in the heart of Barcelona. Relax your mind, nourish your body, and find inner peace through yoga, meditation, and wellness activities.",
  category: "Wellness",
  start_date: "2023-07-03",
  end_date: "2023-07-05",
  is_private: false
)
public_event10.user = businesses[rand(0..3)]
public_event10.save



puts "Creating private events..."
private_event1 = Event.new(
  title: "Midsummer Night Music Festival",
  address: "Plaça del Fòrum, Barcelona",
  description: "Celebrate the enchanting Midsummer Night with a music festival under the starry sky. Enjoy performances by renowned artists, mesmerizing light shows, and a magical atmosphere.",
  category: "Music Festival",
  start_date: "2023-06-21",
  end_date: "2023-06-24",
  is_private: true
)
private_event1.user = martin
private_event1.save
private_event2 = Event.new(
  title: "Giac's Birthday Bash",
  address: "Carrer d'Aribau 145, Barcelona",
  description: "Join us for a night of celebration as we honor me! There will be music, dancing, and lots of fun.",
  category: "Birthday Party",
  start_date: "2023-06-23",
  end_date: "2023-06-23",
  is_private: true
)
private_event2.user = giacomo
private_event2.save
private_event3 = Event.new(
  title: "Barcelona Food Truck Fiesta",
  address: "Parc de la Ciutadella, Barcelona",
  description: "Indulge in a culinary adventure at the Food Truck Fiesta. Discover a variety of mouth-watering cuisines from food trucks, enjoy live music, and soak in the vibrant ambiance.",
  category: "Food Festival",
  start_date: "2023-06-27",
  end_date: "2023-06-30",
  is_private: true
)
private_event3.user = laure
private_event3.save
file = URI.open("https://dxbhsrqyrr690.cloudfront.net/sidearm.nextgen.sites/tarletonsports.com/images/2023/4/24/Beach_Volleyball_Home_Page_Image.png")
private_event4 = Event.new(
  title: "Beach Volleyball Championship",
  address: "Nova Icaria Beach, Barcelona",
  description: "Witness the thrilling Barcelona Beach Volleyball Championship as top teams compete for glory on the sandy shores. Cheer for your favorites and soak up the beach vibes.",
  category: "Sports Event",
  start_date: "2023-07-05",
  end_date: "2023-07-09",
  is_private: true
)
private_event4.user = carlos
private_event4.photo.attach(io: file, filename: "beachvolley.png", content_type: "image/png")
private_event4.save
private_event5 = Event.new(
  title: "Street Art Festival",
  address: "Various Locations, 08906 Monte carlo",
  description: "Experience the vibrant street art scene at the Barcelona Street Art Festival. Discover stunning murals, live art performances, workshops, and immerse yourself in creativity.",
  category: "Art Festival",
  start_date: "2023-07-10",
  end_date: "2023-07-16",
  is_private: false
)
private_event5.user = harris
private_event5.save
private_event6 = Event.new(
  title: "Wine & Tapas Tour",
  address: "Various Venues, Barcelona",
  description: "Embark on a gastronomic adventure through the Barcelona Wine & Tapas Tour. Explore the city's culinary delights with a curated selection of wines and tapas pairings.",
  category: "Food & Drink",
  start_date: "2023-07-18",
  end_date: "2023-07-21",
  is_private: true
)
private_event6.user = marien
private_event6.save
private_event7 = Event.new(
  title: "Electronic Music Festival",
  address: "Poble Espanyol, Barcelona",
  description: "Immerse yourself in the world of electronic music at the Barcelona Electronic Music Festival. Experience electrifying DJ sets, immersive light shows, and dance all night long.",
  category: "Music Festival",
  start_date: "2023-07-25",
  end_date: "2023-07-29",
  is_private: true
)
private_event7.user = ben
private_event7.save
private_event8 = Event.new(
  title: "Barcelona Fashion Week",
  address: "Fira Barcelona Montjuïc, Barcelona",
  description: "Discover the latest trends and styles at Barcelona Fashion Week. Experience captivating runway shows, designer exhibitions, and be inspired by the world of fashion.",
  category: "Fashion Event",
  start_date: "2023-07-31",
  end_date: "2023-08-04",
  is_private: true
)
private_event8.user = harris
private_event8.save
private_event9 = Event.new(
  title: "Ping Pong",
  address: "Cinema Comedia, Monte carlo",
  description: "Cinema monaco.",
  category: "Film Screening",
  start_date: "2023-08-06",
  end_date: "2023-08-06",
  is_private: false
)
private_event9.user = private_users[rand(1..12)]
private_event9.save
private_event10 = Event.new(
  title: "Improve your Front-end",
  address: "Carrer del Bruc 149, Barcelona",
  description: "Join me for an evening of front-end programming practise and networking. Whether you're a beginner or an experienced Ruby developer, this meetup is a great opportunity to learn, share ideas, and meet fellow Ruby enthusiasts. We'll have guest speakers, lightning talks, and plenty of time for Q&A. Don't forget to bring your laptops and questions!",
  category: "Technology",
  start_date: "2023-06-28",
  end_date: "2023-06-30",
  is_private: true
)
private_event10.user = simon
private_event10.save

puts "Creating friendships..."
friendship1 = Friendship.new
friendship1.user = carlos
friendship1.friend = simon
friendship1.save
friendship2 = Friendship.new
friendship2.user = carlos
friendship2.friend = harris
friendship2.save
friendship3 = Friendship.new
friendship3.user = carlos
friendship3.friend = marien
friendship3.save
friendship4 = Friendship.new
friendship4.user = carlos
friendship4.friend = florian
friendship4.save
friendship5 = Friendship.new
friendship5.user = carlos
friendship5.friend = martin
friendship5.save
friendship6 = Friendship.new
friendship6.user = carlos
friendship6.friend = pablo
friendship6.save
friendship7 = Friendship.new
friendship7.user = carlos
friendship7.friend = ade
friendship7.save
friendship8 = Friendship.new
friendship8.user = carlos
friendship8.friend = laure
friendship8.save
friendship9 = Friendship.new
friendship9.user = carlos
friendship9.friend = nestor
friendship9.save
friendship10 = Friendship.new
friendship10.user = carlos
friendship10.friend = giacomo
friendship10.save
friendship11 = Friendship.new
friendship11.user = carlos
friendship11.friend = pato
friendship11.save
friendship12 = Friendship.new
friendship12.user = carlos
friendship12.friend = ben
friendship12.save
friendship13 = Friendship.new
friendship13.user = carlos
friendship13.friend = filip
friendship13.save
friendship14 = Friendship.new
friendship14.user = martin
friendship14.friend = carlos
friendship14.save
friendship15 = Friendship.new
friendship15.user = lewagonbcn
friendship15.friend = carlos
friendship15.save
friendship16 = Friendship.new
friendship16.user = lewagonbcn
friendship16.friend = simon
friendship16.save
friendship17 = Friendship.new
friendship17.user = lewagonbcn
friendship17.friend = harris
friendship17.save
friendship18 = Friendship.new
friendship18.user = lewagonbcn
friendship18.friend = marien
friendship18.save
friendship19 = Friendship.new
friendship19.user = lewagonbcn
friendship19.friend = florian
friendship19.save
friendship20 = Friendship.new
friendship20.user = lewagonbcn
friendship20.friend = martin
friendship20.save
friendship21 = Friendship.new
friendship21.user = lewagonbcn
friendship21.friend = pablo
friendship21.save
friendship22 = Friendship.new
friendship22.user = lewagonbcn
friendship22.friend = ade
friendship22.save
friendship23 = Friendship.new
friendship23.user = lewagonbcn
friendship23.friend = laure
friendship23.save
friendship24 = Friendship.new
friendship24.user = lewagonbcn
friendship24.friend = nestor
friendship24.save
friendship25 = Friendship.new
friendship25.user = lewagonbcn
friendship25.friend = giacomo
friendship25.save
friendship26 = Friendship.new
friendship26.user = lewagonbcn
friendship26.friend = pato
friendship26.save
friendship27 = Friendship.new
friendship27.user = lewagonbcn
friendship27.friend = ben
friendship27.save
friendship28 = Friendship.new
friendship28.user = lewagonbcn
friendship28.friend = filip
friendship28.save
friendship29 = Friendship.new
friendship29.user = simon
friendship29.friend = carlos
friendship29.save
friendship30 = Friendship.new
friendship30.user = marien
friendship30.friend = carlos
friendship30.save
friendship31 = Friendship.new
friendship31.user = harris
friendship31.friend = carlos
friendship31.save

puts "Creating groups of friends..."
group1 = Group.create(name: "Best pals")
group1.user = carlos
group1.save
group2 = Group.create(name: "Hiking friends")
group2.user = carlos
group2.save
group3 = Group.create(name: "Party friends")
group3.user = carlos
group3.save
group4 = Group.create(name: "Work colleagues")
group4.user = carlos
group4.save
group5 = Group.create(name: "Sunday volleyball")
group5.user = carlos
group5.save
group6 = Group.create(name: "batch-#1236-bcn")
group6.user = lewagonbcn
group6.save

puts "Creating group of friendships..."
group_friendships1 = GroupFriendship.new
group_friendships1.group = group1
group_friendships1.friendship = friendship1
group_friendships1.save
group_friendships2 = GroupFriendship.new
group_friendships2.group = group1
group_friendships2.friendship = friendship2
group_friendships2.save
group_friendships3 = GroupFriendship.new
group_friendships3.group = group1
group_friendships3.friendship = friendship3
group_friendships3.save
group_friendships4 = GroupFriendship.new
group_friendships4.group = group2
group_friendships4.friendship = friendship4
group_friendships4.save
group_friendships5 = GroupFriendship.new
group_friendships5.group = group2
group_friendships5.friendship = friendship5
group_friendships5.save
group_friendships6 = GroupFriendship.new
group_friendships6.group = group2
group_friendships6.friendship = friendship6
group_friendships6.save
group_friendships7 = GroupFriendship.new
group_friendships7.group = group3
group_friendships7.friendship = friendship7
group_friendships7.save
group_friendships8 = GroupFriendship.new
group_friendships8.group = group3
group_friendships8.friendship = friendship8
group_friendships8.save
group_friendships9 = GroupFriendship.new
group_friendships9.group = group3
group_friendships9.friendship = friendship9
group_friendships9.save
group_friendships10 = GroupFriendship.new
group_friendships10.group = group4
group_friendships10.friendship = friendship10
group_friendships10.save
group_friendships11 = GroupFriendship.new
group_friendships11.group = group4
group_friendships11.friendship = friendship11
group_friendships11.save
group_friendships12 = GroupFriendship.new
group_friendships12.group = group5
group_friendships12.friendship = friendship12
group_friendships12.save
group_friendships13 = GroupFriendship.new
group_friendships13.group = group5
group_friendships13.friendship = friendship13
group_friendships13.save
group_friendships14 = GroupFriendship.new
group_friendships14.group = group6
group_friendships14.friendship = friendship15
group_friendships14.save
group_friendships15 = GroupFriendship.new
group_friendships15.group = group6
group_friendships15.friendship = friendship16
group_friendships15.save
group_friendships16 = GroupFriendship.new
group_friendships16.group = group6
group_friendships16.friendship = friendship17
group_friendships16.save
group_friendships17 = GroupFriendship.new
group_friendships17.group = group6
group_friendships17.friendship = friendship18
group_friendships17.save
group_friendships18 = GroupFriendship.new
group_friendships18.group = group6
group_friendships18.friendship = friendship19
group_friendships18.save
group_friendships19 = GroupFriendship.new
group_friendships19.group = group6
group_friendships19.friendship = friendship20
group_friendships19.save
group_friendships20 = GroupFriendship.new
group_friendships20.group = group6
group_friendships20.friendship = friendship21
group_friendships20.save
group_friendships21 = GroupFriendship.new
group_friendships21.group = group6
group_friendships21.friendship = friendship22
group_friendships21.save
group_friendships22 = GroupFriendship.new
group_friendships22.group = group6
group_friendships22.friendship = friendship23
group_friendships22.save
group_friendships23 = GroupFriendship.new
group_friendships23.group = group6
group_friendships23.friendship = friendship24
group_friendships23.save
group_friendships24 = GroupFriendship.new
group_friendships24.group = group6
group_friendships24.friendship = friendship25
group_friendships24.save
group_friendships25 = GroupFriendship.new
group_friendships25.group = group6
group_friendships25.friendship = friendship26
group_friendships25.save
group_friendships26 = GroupFriendship.new
group_friendships26.group = group6
group_friendships26.friendship = friendship27
group_friendships26.save
group_friendships27 = GroupFriendship.new
group_friendships27.group = group6
group_friendships27.friendship = friendship28
group_friendships27.save

puts "Creating bookmarks..."
events = [public_event1, public_event2, public_event3, public_event4, public_event5, public_event6, public_event7, public_event8, public_event9, public_event10, private_event1, private_event2, private_event3, private_event4, private_event5, private_event6, private_event7, private_event8, private_event9, private_event10]
bookmark1 = Bookmark.new
bookmark1.user = carlos
bookmark1.event = events[rand(0..19)]
bookmark1.save
bookmark2 = Bookmark.new
bookmark2.user = carlos
bookmark2.event = events[rand(0..19)]
bookmark2.save
bookmark3 = Bookmark.new
bookmark3.user = carlos
bookmark3.event = events[rand(0..19)]
bookmark3.save
bookmark4 = Bookmark.new
bookmark4.user = carlos
bookmark4.event = events[rand(0..19)]
bookmark4.save
bookmark5 = Bookmark.new
bookmark5.user = carlos
bookmark5.event = events[rand(0..19)]
bookmark5.save

puts "Creating comments..."
comment1 = Comment.new(content: "Awesome, let's go together!")
comment1.event = private_event1
comment1.user = martin
comment1.save
comment2 = Comment.new(content: "As a music lover, yes!!!")
comment2.event = private_event1
comment2.user = pablo
comment2.save

puts "Creating invitations..."
invitation1 = Invitation.new
invitation1.event = private_event1
invitation1.friendship = friendship14
invitation1.save

invitation2 = Invitation.new
invitation2.event = private_event6
invitation2.friendship = friendship30
invitation2.save

invitation3 = Invitation.new
invitation3.event = private_event8
invitation3.friendship = friendship31
invitation3.save

invitation4 = Invitation.new
invitation4.event = private_event10
invitation4.friendship = friendship29
invitation4.save

# puts "Creating bookings..."
# booking1 = Booking.new(status: 0)
# booking1.event = private_event1
# booking1.user = carlos
# booking1.save

puts "Done!"
