require "open-uri"

DiveSiteTag.delete_all
Tag.delete_all
Review.delete_all
Log.delete_all
DiveSite.delete_all
puts "Database cleared"

file_1_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/5_n7yjbh.jpg")
file_1_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/9_lweg5x.jpg")
file_1_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/8_a8guix.jpg")
file_1_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/7_bvxtqs.jpg")
file_2_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/6_rqfjly.jpg")
file_2_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/7_bvxtqs.jpg")
file_2_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/2_f0csjk.jpg")
file_2_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/1_opdhrb.jpg")
file_3_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/3_i0hnmc.jpg")
file_3_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/4_llxfib.jpg")
file_3_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661460002/IMG_9033-scaled_bhfwlc.webp")
file_3_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891782/52_y2yxpl.jpg")
file_4_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/30_f5jxyx.jpg")
file_4_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891782/32_boupk2.jpg")
file_4_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/31_jjfqr8.jpg")
file_4_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891782/33_ntdy3y.jpg")
file_5_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/50_dqt7fs.jpg")
file_5_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/28_nri5zp.jpg")
file_5_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/26_ot1t5s.jpg")
file_5_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/29_qkot4q.jpg")
file_6_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/27_opwbmd.jpg")
file_6_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/25_xaraon.jpg")
file_6_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/22_pg0mks.jpg")
file_6_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891783/24_szccsf.jpg")
file_7_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/23_xwv0n7.jpg")
file_7_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/49_gzwvj5.jpg")
file_7_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/21_mu2w3n.jpg")
file_7_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/18_daagha.jpg")
file_8_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/19_vs1lry.jpg")
file_8_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/20_edgnt5.jpg")
file_8_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/47_nvgowi.jpg")
file_8_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/51_e9qqou.jpg")
file_9_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/54_zpqna5.jpg")
file_9_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891784/46_sfgvyk.jpg")
file_9_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/17_yjls6w.jpg")
file_9_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/15_frf85t.jpg")
file_10_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/45_gsjst7.jpg")
file_10_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/16_hiazn6.jpg")
file_10_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/14_wu8rmh.jpg")
file_10_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/13_qicpjd.jpg")
file_11_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/48_m8plbc.jpg")
file_11_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/10_r0zcjj.jpg")
file_11_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891785/11_dmpphj.jpg")
file_11_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/12_kp7cil.jpg")
file_12_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/41_cwkivk.jpg")
file_12_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/7_ygl7hq.jpg")
file_12_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/8_thrswa.jpg")
file_12_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/44_fjie9p.jpg")
file_13_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/40_exhazp.jpg")
file_13_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891787/6_k7jqzp.jpg")
file_13_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/5_h2cdtj.jpg")
file_13_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891787/2_qn1iba.jpg")



site1 = DiveSite.new(
  name: "Balabag Shipwreck",
  description: "A sunken WWII ship on a beautiful coral reef with an abundance of sea life around. An easy dive for beginners - but watch out for the fire coral!",
  country: "Philippines",
  country_iso: "PH",
  city: "Balabag",
  latitude: 11.9602977874923,
  longitude: 121.913588047028,
  dive_type: DiveSite::TYPE[3],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1661290402/development/nx8vege6bpurgk0r2k3kzt8xhryz.jpg"
)
site1.save!
site1.photos.attach(io: file_1_1, filename: "okdiver-image.png", content_type: "image/png")
site1.photos.attach(io: file_1_2, filename: "okdiver-2.png", content_type: "image/png")
site1.photos.attach(io: file_1_3, filename: "okdiver-3.png", content_type: "image/png")
site1.photos.attach(io: file_1_4, filename: "okdiver-4.png", content_type: "image/png")
site1.save!

puts "#{site1.name} created"

site2 = DiveSite.new(
  name: "Pulau Reef",
  description: "An amazing reef dive off the coast of the island of Pulau Batanme! So many turtles and stingrays around - great for all levels",
  country: "Philippines",
  country_iso: "PH",
  city: "Pulau Batanme",
  latitude: -2.23858124636481,
  longitude: 130.580406188965,
  dive_type: DiveSite::TYPE[1],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1661285538/development/q05ueyrfzlp9atiw99tjj16b1b7f.jpg"
)
site2.save!
site2.photos.attach(io: file_2_1, filename: "okdiver-image.png", content_type: "image/png")
site2.photos.attach(io: file_2_2, filename: "okdiver-2.png", content_type: "image/png")
site2.photos.attach(io: file_2_3, filename: "okdiver-3.png", content_type: "image/png")
site2.photos.attach(io: file_2_4, filename: "okdiver-4.png", content_type: "image/png")
site2.save!
puts "#{site2.name} created"

site3 = DiveSite.new(
  name: "East of Arborek Island",
  description: "One of the best diving sites that I have been to! Super isolated and in the middle of the ocean, very deep but beautiful. Advanced only!",
  country: "Philippines",
  country_iso: "PH",
  city: "Arborek Island",
  latitude: -0.565100090931986,
  longitude: 130.533542633057,
  dive_type: DiveSite::TYPE[2],
  level: DiveSite::PROFICIENCY[1],
  image: "https://res.cloudinary.com/dg7mx0hnl/image/upload/v1661219744/development/xi7rpzkhdyh35zte0rwqb8blz8ik.jpg"
)
site3.save!
site3.photos.attach(io: file_3_1, filename: "okdiver-image.png", content_type: "image/png")
site3.photos.attach(io: file_3_2, filename: "okdiver-2.png", content_type: "image/png")
site3.photos.attach(io: file_3_3, filename: "okdiver-3.png", content_type: "image/png")
site3.photos.attach(io: file_3_4, filename: "okdiver-4.png", content_type: "image/png")
site3.save!
puts "#{site3.name} created"

site4 = DiveSite.new(
  name: "National Marine Park La Gabinière",
  description: "National Marine Park of Port-Cros: La Gabinière is a famous dive site, said to be the best in France. Many groupers and school of barracudas can be seen",
  country: "France",
  country_iso: "FR",
  city: "Port-Cros",
  latitude: 43.00615,
  longitude: 6.38854,
  dive_type: DiveSite::TYPE[2],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661460002/IMG_9033-scaled_bhfwlc.webp"
)
site4.save!
site4.photos.attach(io: file_4_1, filename: "okdiver-image.png", content_type: "image/png")
site4.photos.attach(io: file_4_2, filename: "okdiver-2.png", content_type: "image/png")
site4.photos.attach(io: file_4_3, filename: "okdiver-3.png", content_type: "image/png")
site4.photos.attach(io: file_4_4, filename: "okdiver-4.png", content_type: "image/png")
site4.save!
puts "#{site4.name} created"

site5 = DiveSite.new(
  name: "Izu islands",
  description: "One of the best diving sites that I have been to! Super isolated and in the middle of the ocean, very deep but beautiful. Many turtles & great visibility!",
  country: "Japan",
  country_iso: "JP",
  city: "Hachijojima",
  latitude: -33.11265,
  longitude: 139.80624,
  dive_type: DiveSite::TYPE[3],
  level: DiveSite::PROFICIENCY[3],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/3_i0hnmc.jpg"
)
site5.save!
site5.photos.attach(io: file_5_1, filename: "okdiver-image.png", content_type: "image/png")
site5.photos.attach(io: file_5_2, filename: "okdiver-2.png", content_type: "image/png")
site5.photos.attach(io: file_5_3, filename: "okdiver-3.png", content_type: "image/png")
site5.photos.attach(io: file_5_4, filename: "okdiver-4.png", content_type: "image/png")
site5.save!
puts "#{site5.name} created"


site6 = DiveSite.new(
  name: "Bajo Alcyone",
  description: "Cocos Island, which lies far from the Costa Rican Pacific coast, is only accessible by liveaboard but is consistently ranked as the top destination in the world for hammerhead diving with this world-class dive site. The seamount known as Bajo Alcyone rises to 82 feet (25 meters) below the surface and is regularly home to large shoals of hammerhead sharks. The diving can be tricky, but the plan is simple. Divers descend to the top of the seamount, wedge themselves between the rocks and watch the action above. This is truly an epic site and worthy of a place on the list!",
  country: "Costa Rica",
  country_iso: "CR",
  city: "Cocos Island",
  latitude: 5.509,
  longitude: -87.0231,
  dive_type: DiveSite::TYPE[0],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/4_llxfib.jpg"
)
site6.save!
site6.photos.attach(io: file_6_1, filename: "okdiver-image.png", content_type: "image/png")
site6.photos.attach(io: file_6_2, filename: "okdiver-2.png", content_type: "image/png")
site6.photos.attach(io: file_6_3, filename: "okdiver-3.png", content_type: "image/png")
site6.photos.attach(io: file_6_4, filename: "okdiver-4.png", content_type: "image/png")
site6.save!
puts "#{site6.name} created"

site7 = DiveSite.new(
  name: "SS Thistlegorm",
  description: "The best wreck dive in the world, the SS Thistlegorm lies in the northern section of the Red Sea. As a popular day trip and liveaboard stop, it’s easily accessible from Sharm El-Sheikh. The wreck itself was a 420-foot (128-meter) British transport ship. Unfortunately, she met her fate in 1941 when she was sunk by a German air attack. Today, she remains a window into history with a visible cargo of trucks, jeeps, motorcycles, tanks and even a locomotive.",
  country: "Egypt",
  country_iso: "EG",
  city: "Ras Mohammed",
  latitude: 27.8085,
  longitude: 33.9187,
  dive_type: DiveSite::TYPE[0],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/7_bvxtqs.jpg"
)
site7.save!
site7.photos.attach(io: file_7_1, filename: "okdiver-image.png", content_type: "image/png")
site7.photos.attach(io: file_7_2, filename: "okdiver-2.png", content_type: "image/png")
site7.photos.attach(io: file_7_3, filename: "okdiver-3.png", content_type: "image/png")
site7.photos.attach(io: file_7_4, filename: "okdiver-4.png", content_type: "image/png")
site7.save!
puts "#{site7.name} created"

site8 = DiveSite.new(
  name: "Blue Corner",
  description: "Blue Corner is a dive for the ages. It consists of a reef-covered wall that runs along the side of Ngemelis Island in Palau. While the dive is great at any time due to the massive schools of fish, this dive site shows its best face when the currents are strong (think more current, more fish – it’s never been more apt). Divers use reef hooks to carefully attach to the wall and watch a number of pelagic species swim past. Common sights include tuna, sharks and eagle rays. Many Blue Corner alumni claim that they have never seen so many sharks on a single dive.",
  country: "Palau",
  country_iso: "PW",
  city: "Ngemelis Island",
  latitude: 7.34334995505,
  longitude: 134.480622579,
  dive_type: DiveSite::TYPE[5],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/1_opdhrb.jpg"
)
site8.save!
site8.photos.attach(io: file_8_1, filename: "okdiver-image.png", content_type: "image/png")
site8.photos.attach(io: file_8_2, filename: "okdiver-2.png", content_type: "image/png")
site8.photos.attach(io: file_8_3, filename: "okdiver-3.png", content_type: "image/png")
site8.photos.attach(io: file_8_4, filename: "okdiver-4.png", content_type: "image/png")
site8.save!
puts "#{site8.name} created"

site9 = DiveSite.new(
  name: "Manta Night Dive",
  description: "Certainly one of the most unique night dives, the Manta Night Dive is a ballet for manta rays. Just off the coast of Kona is an artificially illuminated area where divers descend to the sandy observation areas. As the light attracts plankton, mantas arrive to take advantage of the feast. All the divers need to do is relax and enjoy the show while the graceful manta rays turn and spin overhead.",
  country: "United States",
  country_iso: "US",
  city: "Kona",
  latitude: 19.78802,
  longitude: -156.04328,
  dive_type: DiveSite::TYPE[4],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/9_lweg5x.jpg"
)
site9.save!
site9.photos.attach(io: file_9_1, filename: "okdiver-image.png", content_type: "image/png")
site9.photos.attach(io: file_9_2, filename: "okdiver-2.png", content_type: "image/png")
site9.photos.attach(io: file_9_3, filename: "okdiver-3.png", content_type: "image/png")
site9.photos.attach(io: file_9_4, filename: "okdiver-4.png", content_type: "image/png")
site9.save!
puts "#{site9.name} created"

site10 = DiveSite.new(
  name: "Cenote Angelita",
  description: "There are thousands of cenotes scattered throughout the Yucatan Peninsula of Mexico, and many of them could easily find a spot on this list. But the mystical quality of Cenote Angelita makes it hard to ignore. At approximately 100 feet (30 meters), the clear freshwater is separated from the saltwater below by a layer of hydrogen sulphate. The appearance of this cloudy substance is otherworldly and makes for fantastic underwater photography.",
  country: "Mexico",
  country_iso: "MX",
  city: "Tulum",
  latitude: 20.13773283643549,
  longitude: -87.57778880672667,
  dive_type: DiveSite::TYPE[4],
  level: DiveSite::PROFICIENCY[3],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/9_lweg5x.jpg"
)
site10.save!
site10.photos.attach(io: file_10_1, filename: "okdiver-image.png", content_type: "image/png")
site10.photos.attach(io: file_10_2, filename: "okdiver-2.png", content_type: "image/png")
site10.photos.attach(io: file_10_3, filename: "okdiver-3.png", content_type: "image/png")
site10.photos.attach(io: file_10_4, filename: "okdiver-4.png", content_type: "image/png")
site10.save!
puts "#{site10.name} created"

site11 = DiveSite.new(
  name: "Tiger Beach",
  description: "Known for shark diving, the Bahamas is a wonderland of fantastic dive sites. While you can swim with hammerheads, oceanic whitetips, and reef sharks, at Tiger Beach, you’ll find daily encounters with tiger sharks. Several large sharks show up daily for their provided feast. While you wait on the sandy bottom, the sharks circle around the group dining on the chum. There’s also a chance to see nurse, lemon and Caribbean reef sharks at this famous Bahamas shark dive site.",
  country: "Bahamas",
  country_iso: "PW",
  city: "Grand Bahama Island",
  latitude: 19.78802,
  longitude: -156.04328,
  dive_type: DiveSite::TYPE[0],
  level: DiveSite::PROFICIENCY[1],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/5_n7yjbh.jpg"
)
site11.save!
site11.photos.attach(io: file_11_1, filename: "okdiver-image.png", content_type: "image/png")
site11.photos.attach(io: file_11_2, filename: "okdiver-2.png", content_type: "image/png")
site11.photos.attach(io: file_11_3, filename: "okdiver-3.png", content_type: "image/png")
site11.photos.attach(io: file_11_4, filename: "okdiver-4.png", content_type: "image/png")
site11.save!
puts "#{site11.name} created"

site12 = DiveSite.new(
  name: "Secret Bay (Mainit Muck) ",
  description: "A wonderland for macro lovers and underwater photographers, Secret Bay, or Mainit Muck as it’s known locally, is a must-dive site in the Philippines. This site is quite shallow at between only 10 and 70 feet (3 and 21 meters), but it is abundantly productive for macro marine life and critters. Many divers have reported sightings of mantis shrimp, rare nudibranchs, gobies of all types, and even wonderpus octopus. The site is also a fantastic night dive when Ambon scorpionfish, Bobbit worms, seahorses, frogfish, and other nocturnal species become active.",
  country: "Philippines",
  country_iso: "PH",
  city: "Anilao",
  latitude: 13.686083,
  longitude: 120.894528,
  dive_type: DiveSite::TYPE[4],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/6_rqfjly.jpg"
)
site12.save!
site12.photos.attach(io: file_12_1, filename: "okdiver-image.png", content_type: "image/png")
site12.photos.attach(io: file_12_2, filename: "okdiver-2.png", content_type: "image/png")
site12.photos.attach(io: file_12_3, filename: "okdiver-3.png", content_type: "image/png")
site12.photos.attach(io: file_12_4, filename: "okdiver-4.png", content_type: "image/png")
site12.save!
puts "#{site12.name} created"

site13 = DiveSite.new(
  name: "Silfra Fissure",
  description: "Certainly one of the most unique night dives, the Manta Night Dive is a ballet for manta rays. Just off the coast of Kona is an artificially illuminated area where divers descend to the sandy observation areas. As the light attracts plankton, mantas arrive to take advantage of the feast. All the divers need to do is relax and enjoy the show while the graceful manta rays turn and spin overhead.",
  country: "Iceland",
  country_iso: "IS",
  city: "Thingvellir National Park",
  latitude:  64.255572,
  longitude: -21.116568,
  dive_type: DiveSite::TYPE[6],
  level: DiveSite::PROFICIENCY[2],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/4_llxfib.jpg"
)
site13.save!
site13.photos.attach(io: file_13_1, filename: "okdiver-image.png", content_type: "image/png")
site13.photos.attach(io: file_13_2, filename: "okdiver-2.png", content_type: "image/png")
site13.photos.attach(io: file_13_3, filename: "okdiver-3.png", content_type: "image/png")
site13.photos.attach(io: file_13_4, filename: "okdiver-4.png", content_type: "image/png")
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
Whales
Temperate\ diving
Tropical\ diving
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


# cloudinary images for users seeds

kieran = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974486/james-thornton-8VoDyBDvv0k-unsplash_egzyli.jpg")
marielle = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974947/francisco-jesus-navarro-hernandez-KzkL5-P1fDU-unsplash_todx71.jpg")
matt = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974952/sebastian-pena-lambarri-W5ODK261mLY-unsplash_ng9blq.jpg")

# seeding users

# user 1

kieran_user = User.create(
  email: "kieran@yopmail.com",
  password: "123456",
  first_name: "Kieran",
  last_name: "Dunch"
)

kieran_user.photo.attach(io: kieran, filename: "okdiver-image.png", content_type: "image/png")
kieran_user.save!
puts "#{kieran_user.name} created"

# user 2

marielle_user = User.create(
  email: "marielle@yopmail.com",
  password: "123456",
  first_name: "Marielle",
  last_name: "Montenegro"
)

marielle_user.photo.attach(io: marielle, filename: "okdiver-image.png", content_type: "image/png")
marielle_user.save!
puts "#{marielle_user.name} created"

# user 3

matt_user = User.create(
  email: "matt@yopmail.com",
  password: "123456",
  first_name: "Matt",
  last_name: "Tattah"
)

matt_user.photo.attach(io: matt, filename: "okdiver-image.png", content_type: "image/png")
matt_user.save!
puts "#{matt_user.name} created"


# seeding reviews
