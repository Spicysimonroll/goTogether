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
marien_profile = Profile.new(first_name: "Marien", last_name: "Irzykiewicz", username: "marienirzyk", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Crypto enthusiast dedicated to exploring the latest advancements in the industry.", is_business: false)
marien_profile.user = marien
marien_profile.photo.attach(io: file, filename: "marien.png", content_type: "image/png")
marien_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U052UBBHD1D-1623d72e7c9b-512")
florian_profile = Profile.new(first_name: "Florian", last_name: "Guerin", username: "burritoGuy", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Nature lover and environmental advocate striving to protect our planet", is_business: false)
florian_profile.user = florian
florian_profile.photo.attach(io: file, filename: "florian.png", content_type: "image/png")
florian_profile.save
file = URI.open("https://media.licdn.com/dms/image/D4E03AQHTf33RPF6nsg/profile-displayphoto-shrink_400_400/0/1686490715551?e=1692230400&v=beta&t=WTdRljN5KIj1qyj63DXvZviMgkK9Q8YSiTjDUdZ_R1g")
martin_profile = Profile.new(first_name: "Martin", last_name: "Klapper", username: "klapperking", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Curious mind with a passion for unraveling the mysteries of the universe", is_business: false)
martin_profile.user = martin
martin_profile.photo.attach(io: file, filename: "martin.png", content_type: "image/png")
martin_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053BJTT1RA-5da71ecd8aea-512")
pablo_profile = Profile.new(first_name: "Pablo", last_name: "Mallorquí Álvarez", username: "donPablo", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Empathetic listener and compassionate soul, ready to lend an ear", is_business: false)
pablo_profile.user = pablo
pablo_profile.photo.attach(io: file, filename: "pablo.png", content_type: "image/png")
pablo_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053FEREE9Z-46308cbe85b5-512")
ade_profile = Profile.new(first_name: "Adeline", last_name: "de Gaulejac", username: "adeeeee", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Fitness enthusiast committed to helping others achieve their wellness goals", is_business: false)
ade_profile.user = ade
ade_profile.photo.attach(io: file, filename: "ade.png", content_type: "image/png")
ade_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053FEUHE3U-df8905ff8dfa-512")
laure_profile = Profile.new(first_name: "Laure", last_name: "Descouts", username: "laurita", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Wordsmith and storyteller, weaving tales to captivate hearts and minds", is_business: false)
laure_profile.user = laure
laure_profile.photo.attach(io: file, filename: "laure.png", content_type: "image/png")
laure_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U05366TF9LM-a8784827c3bf-512")
nestor_profile = Profile.new(first_name: "Nestor", last_name: "Martínez Noguera", username: "nes", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Social justice advocate striving for equality and positive change", is_business: false)
nestor_profile.user = nestor
nestor_profile.photo.attach(io: file, filename: "nestor.png", content_type: "image/png")
nestor_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U053GRXUGLB-b09e64e9310a-512")
giacomo_profile = Profile.new(first_name: "Giacomo D.", last_name: "Carbonara", username: "notAfroButJack", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Food connoisseur with an insatiable appetite for culinary adventures", is_business: false)
giacomo_profile.user = giacomo
giacomo_profile.photo.attach(io: file, filename: "giacomo.png", content_type: "image/png")
giacomo_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U03B7TQPXKK-6577b0f4590a-512")
pato_profile = Profile.new(first_name: "Patricio", last_name: "Pérez Herrero", username: "pato🦆", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Artistic soul expressing emotions and narratives through various mediums", is_business: false)
pato_profile.user = pato
pato_profile.photo.attach(io: file, filename: "pato.png", content_type: "image/png")
pato_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-UFD4SUGBX-a04ddaa08e20-512")
ben_profile = Profile.new(first_name: "Benjamin", last_name: "Pham", username: "supPham", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Lifelong learner passionate about personal growth and expanding horizons", is_business: false)
ben_profile.user = ben
ben_profile.photo.attach(io: file, filename: "ben.png", content_type: "image/png")
ben_profile.save
file = URI.open("https://ca.slack-edge.com/T02NE0241-U02GDJ2SG69-5cb283eef0c3-512")
filip_profile = Profile.new(first_name: "Filip", last_name: "Persson", username: "perss", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Aspiring entrepreneur fueled by ambition and driven to create a lasting impact in the business world", is_business: false)
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
file = URI.open("https://coursereport-s3-production.global.ssl.fastly.net/uploads/school/logo/153/original/Icon_Red.png")
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
file = URI.open("https://sivoris.com/wp-content/uploads/2019/05/bbf-lasexta-com.jpg")
businesses = [business1, business2, business3, business4]
public_event1 = Event.new(
  title: "Summer Music Festival",
  address: "Plaça de Catalunya, 5, Barcelona",
  description: "Get ready for an electrifying celebration of music at the Barcelona Summer Sounds Festival! Immerse yourself in the vibrant atmosphere of this unforgettable outdoor event set against the backdrop of Barcelona's stunning landscapes. From pulsating beats to soulful melodies, this festival brings together an eclectic lineup of local and international artists from various genres, including rock, pop, electronic, and more.",
  category: "Music",
  start_date: "2023-07-15",
  end_date: "2023-07-17",
  is_private: false
)
public_event1.user = businesses[rand(0..3)]
public_event1.photo.attach(io: file, filename: "gastro.jpg", content_type: "image/jpg")
public_event1.save

file = URI.open("https://www.thedailymeal.com/img/gallery/the-most-iconic-dishes-of-molecular-gastronomy/main_0.jpg")
public_event2 = Event.new(
  title: "Gastronomy Fair",
  address: "Avinguda de la Reina Maria Crisben, Bilbao",
  description: "Indulge your taste buds and embark on a culinary adventure at the Barcelona Gastronomy Fair! This delectable event brings together the finest flavors, aromas, and culinary traditions from Catalonia and beyond. Get ready to savor an array of mouthwatering dishes, sample exquisite wines, and immerse yourself in the vibrant food culture of Barcelona.",
  category: "Food",
  start_date: "2023-06-15",
  end_date: "2023-06-20",
  is_private: false
)
public_event2.user = businesses[rand(0..3)]
public_event2.photo.attach(io: file, filename: "gastro.jpg", content_type: "image/jpg")
public_event2.save

file = URI.open("https://observer.com/wp-content/uploads/sites/2/2020/03/Screen-Shot-2020-03-13-at-2.12.14-PM.png")
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
public_event3.photo.attach(io: file, filename: "artex.png", content_type: "image/png")
public_event3.save

file = URI.open("https://media.wonderlandmagazine.com/uploads/2020/09/61b6ad3fbafc10cdb9800de6159a11eb1600361039959.jpg")
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
public_event4.photo.attach(io: file, filename: "fashion.jpg", content_type: "image/jpg")
public_event4.save

file = URI.open("https://images.squarespace-cdn.com/content/v1/5630f90ee4b032072583da6d/1578579143682-CRRIIIEU5WPPNUHED7B0/runners.jpg?format=1500w")
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
public_event5.photo.attach(io: file, filename: "run.jpg", content_type: "image/jpg")
public_event5.save

file = URI.open("https://media-edg.barcelona.cat/wp-content/uploads/2021/07/08140623/Sala_Montjuic_05-1024x683.jpeg")
public_event6 = Event.new(
  title: "Cinema Under the Stars",
  address: "Plaça dels Àngels, 1, Barcelona",
  description: "Enjoy classic movies under the starry sky. Grab your blankets and popcorn, and immerse yourself in the magic of cinema in a unique open-air setting.",
  category: "Film",
  start_date: "2023-07-28T20:00:00",
  end_date: "2023-07-28T20:00:00",
  is_private: false
)
public_event6.user = businesses[rand(0..3)]
public_event6.photo.attach(io: file, filename: "cinemastars.jpg", content_type: "image/jpg")
public_event6.save

file = URI.open("https://www.travelperk.com/wp-content/uploads/alexandre-pellaes-6vAjp0pscX0-unsplash-1-1.jpg")
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
public_event7.photo.attach(io: file, filename: "tech.jpg", content_type: "image/jpg")
public_event7.save

file = URI.open("https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,f_auto,q_60,w_750/v1/goldenapron/62321f5b3f382")
public_event8 = Event.new(
  title: "Dance Workshop: Salsa Fiesta",
  address: "Carrer de Balmes, Barcelona",
  description: "Put on your dancing shoes and join us for an exciting salsa workshop. Learn new moves, enjoy energetic music, and dance the night away with fellow enthusiasts.",
  category: "Dance",
  start_date: "2023-06-20T22:00:00",
  end_date: "2023-06-20T19:00:00",
  is_private: false
)
public_event8.user = businesses[rand(0..3)]
public_event8.photo.attach(io: file, filename: "salsa.png", content_type: "image/png")
public_event8.save

file = URI.open("https://www.tastingtable.com/img/gallery/everything-you-need-to-know-when-having-a-wine-tasting-party/l-intro-1658767989.jpg")
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
public_event9.photo.attach(io: file, filename: "wine.jpg", content_type: "image/jpg")
public_event9.save

file = URI.open("https://www.shbarcelona.com/blog/en/wp-content/uploads/2015/05/5-days-transformative-yoga-retreat-in-barcelona.jpg")
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
public_event10.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/jpg")
public_event10.save

file = URI.open("https://www.theolivepress.es/wp-content/uploads/2022/11/Largest-immersive-exhibition-in-Spain-celebrates-legendary-artist-Pablo-Picasso.jpg?width=1200&enable=upscale")
public_event11 = Event.new(
  title: "Picasso's Barcelona: A Journey Through Art",
  address: "C/ de Montcada, 15-23, 08003 Barcelona",
  description: "An art exhibition showcasing a collection of Pablo Picasso's early works and his artistic journey in Barcelona.",
  category: "Art Exhibition",
  start_date: "2023-06-30T09:00:00",
  end_date: "2023-06-30T17:00:00",
  is_private: false
)
public_event11.user = business1
public_event11.photo.attach(io: file, filename: "picasso.jpg", content_type: "image/png")
public_event11.save

file = URI.open("https://media.istockphoto.com/id/1148471940/photo/confetti-fireworks-above-the-crowd-on-music-festival.jpg?s=612x612&w=0&k=20&c=qM4xEbpIqqTli5oXq-oddPvFWW9IPAXKnPhcGQYn8qo=")
public_event12 = Event.new(
  title: "Barcelona Beats Festival",
  address: "Passeig Olímpic, 15-17, 08038 Barcelona",
  description: "An outdoor music festival featuring popular local and international artists from various genres.",
  category: "Music Concert",
  start_date: "2023-06-28T16:00:00",
  end_date: "2023-06-29T00:00:00",
  is_private: false
)
public_event12.user = business4
public_event12.photo.attach(io: file, filename: "beats.png", content_type: "image/png")
public_event12.save

puts "Creating private events..."
private_users = [simon, harris, marien, florian, martin, pablo, ade, laure, nestor, giacomo, pato, ben, filip]


file = URI.open("https://ksassets.timeincuk.net/wp/uploads/sites/55/2012/03/DavidGuettaPA200111-2.jpg")
private_event2 = Event.new(
  title: "Superstar DJ",
  address: "Carrer d'Aribau 145, Barcelona",
  description: "Guys I'm DJ'ing at a club next week and would love if you guys could join.",
  category: "Party",
  start_date: "2023-06-23T19:00:00",
  end_date: "2023-06-24T02:00:00",
  is_private: false
)
private_event2.user = giacomo
private_event2.photo.attach(io: file, filename: "superstar.jpg", content_type: "image/jpg")
private_event2.save

file = URI.open("https://www.cocinassobreruedas.com/wp-content/uploads/2022/05/los-mejores-food-trucks-en-Cataluna-2022.jpg")
private_event3 = Event.new(
  title: "Food Truck Fiesta",
  address: "Parc de la Ciutadella, Barcelona",
  description: "Lets go to the Foodtruck Fiesta, if you want to come join the booking and I'll see you there!",
  category: "Food Festival",
  start_date: "2023-06-27T20:00:00",
  end_date: "2023-06-27T20:00:00",
  is_private: true
)
private_event3.user = laure
private_event3.photo.attach(io: file, filename: "foodtruck.jpg", content_type: "image/jpg")
private_event3.save

file = URI.open("https://dxbhsrqyrr690.cloudfront.net/sidearm.nextgen.sites/tarletonsports.com/images/2023/4/24/Beach_Volleyball_Home_Page_Image.png")
private_event4 = Event.new(
  title: "Beach Volleyball Evening",
  address: "Nova Icaria Beach, Barcelona",
  description: "Come join for an evening of volleyball, maybe we can grab some beers after.",
  start_date: "2023-06-25T18:00:00",
  end_date: "2023-06-25T22:00:00",
  is_private: true
)

private_event4.user = carlos
private_event4.photo.attach(io: file, filename: "beachvolley.png", content_type: "image/png")
private_event4.save

# --------------

file = URI.open("https://dxbhsrqyrr690.cloudfront.net/sidearm.nextgen.sites/tarletonsports.com/images/2023/4/24/Beach_Volleyball_Home_Page_Image.png")
private_event4_1 = Event.new(
  title: "Beach Volleyball Morning",
  address: "Nova Icaria Beach, Barcelona",
  description: "Come join for an evening of volleyball, maybe we can grab some beers after.",
  start_date: "2023-06-29T09:00:00",
  end_date: "2023-06-29T12:00:00",
  is_private: true
)

private_event4_1.user = carlos
private_event4_1.photo.attach(io: file, filename: "beachvolley.png", content_type: "image/png")
private_event4_1.save

# -------------


file = URI.open("https://wp.inews.co.uk/wp-content/uploads/2017/03/five-a-side.jpg")
private_event5 = Event.new(
  title: "5-aside Football",
  address: "Av. del Litoral, 85, 08005 Barcelona",
  description: "Let me know if you want to come to 5-aside football this week. Join the event if you want to come and bring 5 EUR!!!",
  category: "Sport",
  start_date: "2023-06-22T19:00:00",
  end_date: "2023-6-22T20:00:00",
  is_private: false
)
private_event5.user = harris
private_event5.photo.attach(io: file, filename: "football.jpg", content_type: "image/jpg")
private_event5.save

file = URI.open("https://withlocals-com-res.cloudinary.com/image/upload/c_fill,f_auto,fl_progressive,g_auto,q_auto,w_500/6272d956f46cadbd0fb39c8085509aa5")
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
private_event6.photo.attach(io: file, filename: "winetapas.jpg", content_type: "image/jpg")
private_event6.save

file = URI.open("https://img.freepik.com/premium-photo/happy-family-eating-barbecue-home-party-dinner_166273-398.jpg?w=2000")
private_event7 = Event.new(
  title: "BBQ & Flat Party",
  address: "Poble Espanyol, Barcelona",
  description: "Join me for a bbq at my flat, bring some 🍷 and I'll bring the food.",
  category: "Music Festival",
  start_date: "2023-07-25T19:00:00",
  end_date: "2023-07-25T23:00:00",
  is_private: true
)
private_event7.user = ben
private_event7.photo.attach(io: file, filename: "bbq.jpg", content_type: "image/jpg")
private_event7.save

file = URI.open("https://www.ethicalglobe.com/storage/images/entities/small/XVnSlLm9JqVTP0CmWLbzbW6L3VKWLsyqlPHUjBUY.png")
private_event8 = Event.new(
  title: "treen Sample Sale",
  address: "Fira Barcelona Montjuïc, Barcelona",
  description: "Grab your favourite treen items and a massive discount.",
  category: "Fashion Event",
  start_date: "2023-06-30T18:00:00",
  end_date: "2023-06-30T22:00:00",
  is_private: true
)
private_event8.user = harris
private_event8.photo.attach(io: file, filename: "treen.png", content_type: "image/png")
private_event8.save

file = URI.open("https://i.ytimg.com/vi/mSFTtTOGi4g/maxresdefault.jpg")
private_event9 = Event.new(
  title: "Ultimate Ping Pong",
  address: "C/ del Bruc, 149, 08037 Barcelona",
  description: "Calling all ping pong enthusiasts! Get ready for an adrenaline-fueled battle on the table as friends gather for the ultimate Ping Pong Championship. Prepare to showcase your skills, strategy, and lightning-fast reflexes in this exciting tournament.",
  category: "Sports",
  start_date: "2023-08-06T19:00:00",
  end_date: "2023-08-06T22:00:00",
  is_private: true
)
private_event9.user = martin
private_event9.photo.attach(io: file, filename: "pingpong.jpg", content_type: "image/jpg")
private_event9.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/26/Heinz_Zak%2C_Separate_Reality_5%2C11d%2C_Free_Solo%2C_Yosemite-Nationalpark%2C_Kalifornien%2C_USA.jpg")
private_event10 = Event.new(
  title: "Coding 💻 & Climbing 🧗‍♂️",
  address: "Carrer del Bruc 149, Barcelona",
  description: "I like coding and climbing, so now I want to do both at the same time. Join me for some CSS 20 meters up 😬",
  category: "Technology",
  start_date: "2023-06-28T19:00:00",
  end_date: "2023-06-28T22:00:00",
  is_private: true
)
private_event10.user = simon
private_event10.photo.attach(io: file, filename: "climbing.jpg", content_type: "image/jpg")
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
friendship32 = Friendship.new
friendship32.user = simon
friendship32.friend = harris
friendship32.save
friendship33 = Friendship.new
friendship33.user = simon
friendship33.friend = marien
friendship33.save
friendship34 = Friendship.new
friendship34.user = simon
friendship34.friend = florian
friendship34.save
friendship35 = Friendship.new
friendship35.user = simon
friendship35.friend = martin
friendship35.save
friendship36 = Friendship.new
friendship36.user = simon
friendship36.friend = pablo
friendship36.save
friendship37 = Friendship.new
friendship37.user = simon
friendship37.friend = ade
friendship37.save
friendship38 = Friendship.new
friendship38.user = simon
friendship38.friend = laure
friendship38.save
friendship39 = Friendship.new
friendship39.user = simon
friendship39.friend = nestor
friendship39.save
friendship40 = Friendship.new
friendship40.user = simon
friendship40.friend = giacomo
friendship40.save
friendship41 = Friendship.new
friendship41.user = simon
friendship41.friend = pato
friendship41.save
friendship42 = Friendship.new
friendship42.user = simon
friendship42.friend = ben
friendship42.save
friendship43 = Friendship.new
friendship43.user = simon
friendship43.friend = filip
friendship43.save
friendship43 = Friendship.new
friendship43.user = giacomo
friendship43.friend = carlos
friendship43.save

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

group7 = Group.create(name: "batch-#1237-bcn")
group7.user = lewagonbcn
group7.save
group8 = Group.create(name: "top-secret-group")
group8.user = lewagonbcn
group8.save
group9 = Group.create(name: "teachers-TAs-bcn")
group9.user = lewagonbcn
group9.save
group10 = Group.create(name: "alumni-bcn")
group10.user = lewagonbcn
group10.save

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
events = [public_event1, public_event2, public_event3, public_event4, public_event5, public_event6, public_event7, public_event8, public_event9, public_event10, private_event2, private_event3, private_event4, private_event5, private_event6, private_event7, private_event8, private_event9, private_event10]
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

puts "Creating invitations..."
invitation1 = Invitation.new
invitation1.event = private_event9
invitation1.friendship = friendship14
invitation1.save

invitation2 = Invitation.new
invitation2.event = private_event6
invitation2.friendship = friendship30
invitation2.save

invitation3 = Invitation.new
invitation3.event = private_event10
invitation3.friendship = friendship29
invitation3.save

invitation4 = Invitation.new
invitation4.event = private_event8
invitation4.friendship = friendship31
invitation4.save

puts "Creating bookings..."
booking = Booking.new(status: 1)
booking.event = public_event10
booking.user = pato
booking.save

booking1 = Booking.new(status: 1)
booking1.event = public_event11
booking1.user = harris
booking1.save

booking2 = Booking.new(status: 1)
booking2.event = public_event12
booking2.user = giacomo
booking2.save

booking3 = Booking.new(status: 1)
booking3.event = public_event5
booking3.user = filip
booking3.save

booking4 = Booking.new(status: 1)
booking4.event = public_event7
booking4.user = ben
booking4.save

booking5 = Booking.new(status: 1)
booking5.event = public_event2
booking5.user = simon
booking5.save

booking6 = Booking.new(status: 0)
booking6.event = private_event10
booking6.user = harris
booking6.save

booking7 = Booking.new(status: 0)
booking7.event = private_event10
booking7.user = marien
booking7.save

booking8 = Booking.new(status: 0)
booking8.event = private_event10
booking8.user = martin
booking8.save

booking9 = Booking.new(status: 0)
booking9.event = private_event10
booking9.user = florian
booking9.save

booking10 = Booking.new(status: 0)
booking10.event = private_event10
booking10.user = pablo
booking10.save

booking11 = Booking.new(status: 0)
booking11.event = private_event10
booking11.user = laure
booking11.save

booking12 = Booking.new(status: 0)
booking12.event = private_event10
booking12.user = ade
booking12.save

booking13 = Booking.new(status: 0)
booking13.event = private_event10
booking13.user = nestor
booking13.save

booking14 = Booking.new(status: 0)
booking14.event = private_event10
booking14.user = giacomo
booking14.save

booking15 = Booking.new(status: 0)
booking15.event = public_event8
booking15.user = carlos
booking15.save

booking16 = Booking.new(status: 0)
booking16.event = public_event10
booking16.user = marien
booking16.save

booking17 = Booking.new(status: 0)
booking17.event = public_event6
booking17.user = simon
booking17.save

puts "Creating comments..."
comment1 = Comment.new(content: "Awesome, let's go together!")
comment1.event = private_event10
comment1.user = martin
comment1.save

comment2 = Comment.new(content: "I hate climbing, but love coding!!!")
comment2.event = private_event10
comment2.user = pablo
comment2.save

comment3 = Comment.new(content: "👍")
comment3.event = private_event10
comment3.user = florian
comment3.save

comment4 = Comment.new(content: "Nice. See you guys there!")
comment4.event = private_event10
comment4.user = simon
comment4.save

puts "Done!"
