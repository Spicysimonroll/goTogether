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
carlos = User.create(email: "carlos@test.com", password: "test1234")
simon = User.create(email: "simon@test.com", password: "test1234")
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
carlos_profile = Profile.new(first_name: "Carlos", last_name: "Peña", username: "carlospa23", address: "C/ del Bruc, 149, 08037 Barcelona", description: "I love playing beach volley, outdoor enthusiast, coding eager learner", is_business: false)
carlos_profile.user = carlos
carlos_profile.save
simon_profile = Profile.new(first_name: "Simon", last_name: "Hu", username: "spicysimonroll", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Passionate adventurer seeking thrilling experiences around the world", is_business: false)
simon_profile.user = simon
simon_profile.save
harris_profile = Profile.new(first_name: "Harris", last_name: "Grant", username: "harristreen", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Creative problem solver with a knack for innovative solutions", is_business: false)
harris_profile.user = harris
harris_profile.save
marien_profile = Profile.new(first_name: "Marien", last_name: "Irzykiewicz", username: "marienirzyk", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Crypto enthusiast dedicated to exploring the latest advancements in the industry.", is_business: false)
marien_profile.user = marien
marien_profile.save
john_profile = Profile.new(first_name: "John", last_name: "Smith", username: "johnnyS", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Nature lover and environmental advocate striving to protect our planet", is_business: false)
john_profile.user = john
john_profile.save
sophie_profile = Profile.new(first_name: "Sophie", last_name: "Johnson", username: "sophieee", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Curious mind with a passion for unraveling the mysteries of the universe", is_business: false)
sophie_profile.user = sophie
sophie_profile.save
marc_profile = Profile.new(first_name: "Marc", last_name: "Williams", username: "marcWill", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Empathetic listener and compassionate soul, ready to lend an ear", is_business: false)
marc_profile.user = marc
marc_profile.save
jose_profile = Profile.new(first_name: "Jose", last_name: "Rodriguez", username: "elRodrigo", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Fitness enthusiast committed to helping others achieve their wellness goals", is_business: false)
jose_profile.user = jose
jose_profile.save
anna_profile = Profile.new(first_name: "Anna", last_name: "Brown", username: "brownies", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Wordsmith and storyteller, weaving tales to captivate hearts and minds", is_business: false)
anna_profile.user = anna
anna_profile.save
fred_profile = Profile.new(first_name: "Fred", last_name: "Garcia", username: "garcield", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Social justice advocate striving for equality and positive change", is_business: false)
fred_profile.user = fred
fred_profile.save
paul_profile = Profile.new(first_name: "Paul", last_name: "Wilson", username: "wilsoooon", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Food connoisseur with an insatiable appetite for culinary adventures", is_business: false)
paul_profile.user = paul
paul_profile.save
federica_profile = Profile.new(first_name: "Federica", last_name: "Nutella", username: "nutellaLove", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Artistic soul expressing emotions and narratives through various mediums", is_business: false)
federica_profile.user = federica
federica_profile.save
tina_profile = Profile.new(first_name: "Tina", last_name: "Pozzuoli", username: "pozzii", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Lifelong learner passionate about personal growth and expanding horizons", is_business: false)
tina_profile.user = tina
tina_profile.save
andrea_profile = Profile.new(first_name: "Andrea", last_name: "Miller", username: "theMiller", address: "C/ del Bruc, 149, 08037 Barcelona", description: "Aspiring entrepreneur fueled by ambition and driven to create a lasting impact in the business world", is_business: false)
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
  address: "Avinguda de la Reina Maria Cristina, Bilbao",
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
private_users = [simon, harris, marien, john, sophie, marc, jose, anna, fred, paul, federica, tina, andrea]
private_event1 = Event.new(
  title: "Midsummer Night Music Festival",
  address: "Plaça del Fòrum, Barcelona",
  description: "Celebrate the enchanting Midsummer Night with a music festival under the starry sky. Enjoy performances by renowned artists, mesmerizing light shows, and a magical atmosphere.",
  category: "Music Festival",
  start_date: "2023-06-21",
  end_date: "2023-06-24",
  is_private: true
)
private_event1.user = carlos
private_event1.save
private_event2 = Event.new(
  title: "Jane's Birthday Bash",
  address: "Carrer d'Aribau 145, Barcelona",
  description: "Join us for a night of celebration as we honor Jane's birthday! There will be music, dancing, and lots of fun.",
  category: "Birthday Party",
  start_date: "2023-06-23",
  end_date: "2023-06-23",
  is_private: true
)
private_event2.user = private_users[rand(0..12)]
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
private_event3.user = private_users[rand(0..12)]
private_event3.save
private_event4 = Event.new(
  title: "Barcelona Beach Volleyball Championship",
  address: "Nova Icaria Beach, Barcelona",
  description: "Witness the thrilling Barcelona Beach Volleyball Championship as top teams compete for glory on the sandy shores. Cheer for your favorites and soak up the beach vibes.",
  category: "Sports Event",
  start_date: "2023-07-05",
  end_date: "2023-07-09",
  is_private: true
)
private_event4.user = private_users[rand(0..12)]
private_event4.save
private_event5 = Event.new(
  title: "Barcelona Street Art Festival",
  address: "Various Locations, Barcelona",
  description: "Experience the vibrant street art scene at the Barcelona Street Art Festival. Discover stunning murals, live art performances, workshops, and immerse yourself in creativity.",
  category: "Art Festival",
  start_date: "2023-07-10",
  end_date: "2023-07-16",
  is_private: true
)
private_event5.user = private_users[rand(0..12)]
private_event5.save
private_event6 = Event.new(
  title: "Barcelona Wine & Tapas Tour",
  address: "Various Venues, Barcelona",
  description: "Embark on a gastronomic adventure through the Barcelona Wine & Tapas Tour. Explore the city's culinary delights with a curated selection of wines and tapas pairings.",
  category: "Food & Drink",
  start_date: "2023-07-18",
  end_date: "2023-07-21",
  is_private: true
)
private_event6.user = private_users[rand(0..12)]
private_event6.save
private_event7 = Event.new(
  title: "Barcelona Electronic Music Festival",
  address: "Poble Espanyol, Barcelona",
  description: "Immerse yourself in the world of electronic music at the Barcelona Electronic Music Festival. Experience electrifying DJ sets, immersive light shows, and dance all night long.",
  category: "Music Festival",
  start_date: "2023-07-25",
  end_date: "2023-07-29",
  is_private: true
)
private_event7.user = private_users[rand(0..12)]
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
private_event8.user = private_users[rand(0..12)]
private_event8.save
private_event9 = Event.new(
  title: "Barcelona Film Night",
  address: "Cinema Comedia, Barcelona",
  description: "Enjoy a night of cinema under the stars at Barcelona Film Night. Watch classic and contemporary films in an open-air setting, surrounded by the city's vibrant atmosphere.",
  category: "Film Screening",
  start_date: "2023-08-06",
  end_date: "2023-08-06",
  is_private: true
)
private_event9.user = private_users[rand(0..12)]
private_event9.save
private_event10 = Event.new(
  title: "Ruby Meetup",
  address: "Carrer del Bruc 149, Barcelona",
  description: "Join us for an evening of Ruby programming discussions and networking. Whether you're a beginner or an experienced Ruby developer, this meetup is a great opportunity to learn, share ideas, and meet fellow Ruby enthusiasts. We'll have guest speakers, lightning talks, and plenty of time for Q&A. Don't forget to bring your laptops and questions!",
  category: "Technology",
  start_date: "2023-06-28",
  end_date: "2023-06-30",
  is_private: true
)
private_event10.user = private_users[rand(0..12)]
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
friendship4.friend = john
friendship4.save
friendship5 = Friendship.new
friendship5.user = carlos
friendship5.friend = sophie
friendship5.save
friendship6 = Friendship.new
friendship6.user = carlos
friendship6.friend = marc
friendship6.save
friendship7 = Friendship.new
friendship7.user = carlos
friendship7.friend = jose
friendship7.save
friendship8 = Friendship.new
friendship8.user = carlos
friendship8.friend = anna
friendship8.save
friendship9 = Friendship.new
friendship9.user = carlos
friendship9.friend = fred
friendship9.save
friendship10 = Friendship.new
friendship10.user = carlos
friendship10.friend = paul
friendship10.save
friendship11 = Friendship.new
friendship11.user = carlos
friendship11.friend = federica
friendship11.save
friendship12 = Friendship.new
friendship12.user = carlos
friendship12.friend = tina
friendship12.save
friendship13 = Friendship.new
friendship13.user = carlos
friendship13.friend = andrea
friendship13.save
friendship14 = Friendship.new
friendship14.user = sophie
friendship14.friend = carlos
friendship14.save

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
comment1.user = sophie
comment1.save
comment2 = Comment.new(content: "As a music lover, yes!!!")
comment2.event = private_event1
comment2.user = marc
comment2.save

puts "Creating bookings..."
booking1 = Booking.new(status: 1)
booking1.event = private_event1
booking1.user = carlos
booking1.save
booking2 = Booking.new(status: 0)
booking2.event = private_event2
booking2.user = carlos
booking2.save
booking3 = Booking.new(status: 0)
booking3.event = private_event10
booking3.user = carlos
booking3.save
booking4 = Booking.new(status: 0)
booking4.event = private_event3
booking4.user = carlos
booking4.save
booking5 = Booking.new(status: 1)
booking5.event = private_event5
booking5.user = carlos
booking5.save

puts "Creating invitations..."
invitation1 = Invitation.new
invitation1.event = private_event1
invitation1.friendship = friendship5
invitation1.save
invitation2 = Invitation.new
invitation2.event = private_event1
invitation2.friendship = friendship6
invitation2.save
invitation3 = Invitation.new
invitation3.event = private_event5
invitation3.friendship = friendship1
invitation3.save
invitation4 = Invitation.new
invitation4.event = private_event5
invitation4.friendship = friendship2
invitation4.save
invitation5 = Invitation.new
invitation5.event = private_event5
invitation5.friendship = friendship3
invitation5.save
invitation6 = Invitation.new
invitation6.event = private_event1
invitation6.friendship = friendship14
invitation6.save

puts "Done!"
