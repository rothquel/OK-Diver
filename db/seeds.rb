DiveSiteTag.delete_all
Tag.delete_all
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
  dive_type: DiveSite::TYPE[3],
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
  dive_type: DiveSite::TYPE[1],
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
  dive_type: DiveSite::TYPE[2],
  level: DiveSite::PROFICIENCY[1],
  image: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1661219744/development/xi7rpzkhdyh35zte0rwqb8blz8ik.jpg"
)
site3.save!
puts "#{site3.name} created"


site4 = DiveSite.new(
  name: "National Marine Park La Gabinière",
  description: "National Marine Park of Port-Cros: La Gabinière is a famous dive site, said to be the best in France. Many groupers and school of barracudas can be seen",
  country: "France",
  city: "Port-Cros",
  latitude: 43.00615,
  longitude: 6.38854,
  dive_type: DiveSite::TYPE[2],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661460002/IMG_9033-scaled_bhfwlc.webp"
)
site4.save!
puts "#{site4.name} created"


site5 = DiveSite.new(
  name: "Izu islands",
  description: "One of the best diving sites that I have been to! Super isolated and in the middle of the ocean, very deep but beautiful. Many turtles & great visibility!",
  country: "Japan",
  city: "Hachijojima",
  latitude: -33.11265,
  longitude: 139.80624,
  dive_type: DiveSite::TYPE[3],
  level: DiveSite::PROFICIENCY[3],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/3_i0hnmc.jpg"
)
site5.save!
puts "#{site5.name} created"


site6 = DiveSite.new(
  name: "Bajo Alcyone",
  description: "Cocos Island, which lies far from the Costa Rican Pacific coast, is only accessible by liveaboard but is consistently ranked as the top destination in the world for hammerhead diving with this world-class dive site. The seamount known as Bajo Alcyone rises to 82 feet (25 meters) below the surface and is regularly home to large shoals of hammerhead sharks. The diving can be tricky, but the plan is simple. Divers descend to the top of the seamount, wedge themselves between the rocks and watch the action above. This is truly an epic site and worthy of a place on the list!",
  country: "Costa Rica",
  city: "Cocos Island",
  latitude: 5.509,
  longitude: -87.0231,
  dive_type: DiveSite::TYPE[0],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/4_llxfib.jpg"
)
site6.save!
puts "#{site6.name} created"

site7 = DiveSite.new(
  name: "SS Thistlegorm",
  description: "The best wreck dive in the world, the SS Thistlegorm lies in the northern section of the Red Sea. As a popular day trip and liveaboard stop, it’s easily accessible from Sharm El-Sheikh. The wreck itself was a 420-foot (128-meter) British transport ship. Unfortunately, she met her fate in 1941 when she was sunk by a German air attack. Today, she remains a window into history with a visible cargo of trucks, jeeps, motorcycles, tanks and even a locomotive.",
  country: "Egypt",
  city: "Ras Mohammed",
  latitude: 27.8085,
  longitude: 33.9187,
  dive_type: DiveSite::TYPE[0],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/7_bvxtqs.jpg"
)
site7.save!
puts "#{site7.name} created"

site8 = DiveSite.new(
  name: "Blue Corner",
  description: "Blue Corner is a dive for the ages. It consists of a reef-covered wall that runs along the side of Ngemelis Island in Palau. While the dive is great at any time due to the massive schools of fish, this dive site shows its best face when the currents are strong (think more current, more fish – it’s never been more apt). Divers use reef hooks to carefully attach to the wall and watch a number of pelagic species swim past. Common sights include tuna, sharks and eagle rays. Many Blue Corner alumni claim that they have never seen so many sharks on a single dive.",
  country: "Palau",
  city: "Ngemelis Island",
  latitude: 7.34334995505,
  longitude: 134.480622579,
  dive_type: DiveSite::TYPE[5],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/1_opdhrb.jpg"
)
site8.save!
puts "#{site8.name} created"

site9 = DiveSite.new(
  name: "Manta Night Dive",
  description: "Certainly one of the most unique night dives, the Manta Night Dive is a ballet for manta rays. Just off the coast of Kona is an artificially illuminated area where divers descend to the sandy observation areas. As the light attracts plankton, mantas arrive to take advantage of the feast. All the divers need to do is relax and enjoy the show while the graceful manta rays turn and spin overhead.",
  country: "Hawaii",
  city: "Kona",
  latitude: 19.78802,
  longitude: -156.04328,
  dive_type: DiveSite::TYPE[4],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/9_lweg5x.jpg"
)
site9.save!
puts "#{site9.name} created"

site10 = DiveSite.new(
  name: "Cenote Angelita",
  description: "There are thousands of cenotes scattered throughout the Yucatan Peninsula of Mexico, and many of them could easily find a spot on this list. But the mystical quality of Cenote Angelita makes it hard to ignore. At approximately 100 feet (30 meters), the clear freshwater is separated from the saltwater below by a layer of hydrogen sulphate. The appearance of this cloudy substance is otherworldly and makes for fantastic underwater photography.",
  country: "Mexico",
  city: "Tulum",
  latitude: 20.13773283643549,
  longitude: -87.57778880672667,
  dive_type: DiveSite::TYPE[4],
  level: DiveSite::PROFICIENCY[3],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/9_lweg5x.jpg"
)
site10.save!
puts "#{site10.name} created"

site11 = DiveSite.new(
  name: "Tiger Beach",
  description: "Known for shark diving, the Bahamas is a wonderland of fantastic dive sites. While you can swim with hammerheads, oceanic whitetips, and reef sharks, at Tiger Beach, you’ll find daily encounters with tiger sharks. Several large sharks show up daily for their provided feast. While you wait on the sandy bottom, the sharks circle around the group dining on the chum. There’s also a chance to see nurse, lemon and Caribbean reef sharks at this famous Bahamas shark dive site.",
  country: "Bahamas",
  city: "Grand Bahama Island",
  latitude: 19.78802,
  longitude: -156.04328,
  dive_type: DiveSite::TYPE[0],
  level: DiveSite::PROFICIENCY[1],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/5_n7yjbh.jpg"
)
site11.save!
puts "#{site11.name} created"

site12 = DiveSite.new(
  name: "Secret Bay (Mainit Muck) ",
  description: "A wonderland for macro lovers and underwater photographers, Secret Bay, or Mainit Muck as it’s known locally, is a must-dive site in the Philippines. This site is quite shallow at between only 10 and 70 feet (3 and 21 meters), but it is abundantly productive for macro marine life and critters. Many divers have reported sightings of mantis shrimp, rare nudibranchs, gobies of all types, and even wonderpus octopus. The site is also a fantastic night dive when Ambon scorpionfish, Bobbit worms, seahorses, frogfish, and other nocturnal species become active.",
  country: "Philippines",
  city: "Anilao",
  latitude: 13.686083,
  longitude: 120.894528,
  dive_type: DiveSite::TYPE[4],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/6_rqfjly.jpg"
)
site12.save!
puts "#{site12.name} created"

site13 = DiveSite.new(
  name: "Silfra Fissure",
  description: "Certainly one of the most unique night dives, the Manta Night Dive is a ballet for manta rays. Just off the coast of Kona is an artificially illuminated area where divers descend to the sandy observation areas. As the light attracts plankton, mantas arrive to take advantage of the feast. All the divers need to do is relax and enjoy the show while the graceful manta rays turn and spin overhead.",
  country: "Iceland",
  city: "Thingvellir National Park",
  latitude:  64.255572,
  longitude: -21.116568,
  dive_type: DiveSite::TYPE[6],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/4_llxfib.jpg"
)
site13.save!
puts "#{site13.name} created"

tag_names = %w[
Underwater\ fauna
underwater\ flora
phytoplankton
red\ algae
kelp
seagrass
sargassum
sharks
Ship's\ wreck
Barrier\ Reef
Pipefish
Lionfish
Ghost\ Pipefish
Seahorse
Comet\ Goldfish
]

tag_names.each do |name|
  Tag.create!(name: name)
end

tags = Tag.all

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[3]
dst.save!

# 2
dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[6]
dst.save!

# 3
dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[7]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[8]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[9]
dst.save!

# 4
dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[10]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[11]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[12]
dst.save!


# 5
dst = DiveSiteTag.new
dst.dive_site = site5
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site5
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site5
dst.tag = tags[3]
dst.save!

# 6
dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[3]
dst.save!

# 7
dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[3]
dst.save!

# 8
dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[3]
dst.save!

# 9
dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[3]
dst.save!

# 10
dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[3]
dst.save!

# 11
dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[3]
dst.save!

# 12
dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[3]
dst.save!

# 13
dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[3]
dst.save!
