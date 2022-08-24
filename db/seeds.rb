Review.delete_all
Log.delete_all
DiveSite.delete_all
puts "Database cleared"

site1 = DiveSite.new(
  name: "Balabag Shipwreck",
  description: "A sunken WWII ship on a beautiful coral reef with an abundance of sea life around. An easy dive for beginners - but watch out for the fire coral!",
  country: "Philippines",
  city: "Balabag",
  latitude: 11.9602977874923,
  longitude: 121.913588047028,
  dive_type: "wreck",
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1661290402/development/nx8vege6bpurgk0r2k3kzt8xhryz.jpg"
)
site1.save!
puts "#{site1.name} created"

site2 = DiveSite.new(
  name: "Pulau Reef",
  description: "An amazing reef dive off the coast of the island of Pulau Batanme! So many turtles and stingrays around - great for all levels",
  country: "Philippines",
  city: "Pulau Batanme",
  latitude: -2.23858124636481,
  longitude: 130.580406188965,
  dive_type: "reef",
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1661285538/development/q05ueyrfzlp9atiw99tjj16b1b7f.jpg"
)
site2.save!
puts "#{site2.name} created"

site3 = DiveSite.new(
  name: "East of Arborek Island",
  description: "One of the best diving sites that I have been to! Super isolated and in the middle of the ocean, very deep but beautiful. Advanced only!",
  country: "Philippines",
  city: "Arborek Island",
  latitude: -0.565100090931986,
  longitude: 130.533542633057,
  dive_type: "deep",
  level: DiveSite::PROFICIENCY[1],
  image: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1661219744/development/xi7rpzkhdyh35zte0rwqb8blz8ik.jpg"
)
site3.save!
puts "#{site3.name} created"
