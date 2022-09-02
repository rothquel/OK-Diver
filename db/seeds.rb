require "open-uri"
require_relative "seed_files/users"

# ActiveRecord::Base.connection.execute("delete from messages")
DiveSiteTag.delete_all
Tag.delete_all
Review.delete_all
Log.delete_all
DiveSite.delete_all
User.delete_all
puts "Database cleared"

file_1_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/5_n7yjbh.jpg")
file_1_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/9_lweg5x.jpg")
file_1_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/8_a8guix.jpg")
file_1_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/7_bvxtqs.jpg")
file_2_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/6_rqfjly.jpg")
file_2_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/7_bvxtqs.jpg")
file_2_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/2_f0csjk.jpg")
file_2_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/1_opdhrb.jpg")
file_3_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891787/4_elykj2.jpg")
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


file_14_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1662135306/1_uuarhe.png")
file_14_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1662135306/7_m52kcl.png")
file_14_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891786/5_h2cdtj.jpg")
file_14_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1662135306/5_jyf2cl.png")


file_15_1 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1662135306/4_k5kvfr.png")
file_15_2 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1661891787/6_k7jqzp.jpg")
file_15_3 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1662135307/3_yqjagd.png")
file_15_4 = URI.open("https://res.cloudinary.com/cloudinary972/image/upload/v1662135308/8_pxolhm.png")



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
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661891788/37_uynm4d.jpg"
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
  name: "Outback Diving",
  description: "One of the best cave diving sites that I have been to! Super isolated and in the middle of the desert, very deep but beautiful. Many turtles & great visibility!",
  country: "Australia",
  country_iso: "AU",
  city: "Darwin",
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
  country: "Philippines",
  country_iso: "PH",
  city: "Thingvellir National Park",
  latitude:  64.255572,
  longitude: -21.116568,
  dive_type: DiveSite::TYPE[6],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/4_llxfib.jpg"
)
site13.save!
site13.photos.attach(io: file_13_1, filename: "okdiver-image.png", content_type: "image/png")
site13.photos.attach(io: file_13_2, filename: "okdiver-2.png", content_type: "image/png")
site13.photos.attach(io: file_13_3, filename: "okdiver-3.png", content_type: "image/png")
site13.photos.attach(io: file_13_4, filename: "okdiver-4.png", content_type: "image/png")
site13.save!

puts "#{site13.name} created"

site14 = DiveSite.new(
  name: "Tubbataha Reefs",
  description: "Tubbataha Reefs Natural Park is a UNESCO World Heritage Site located in Palawan, in the heart of the Sulu Sea.",
  country: "Philippines",
  country_iso: "PH",
  city: "Palawan",
  latitude: 9.642892,
  longitude: 118.165731,
  dive_type: DiveSite::TYPE[3],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/6_rqfjly.jpg"
)
site14.save!
site14.photos.attach(io: file_14_1, filename: "okdiver-image.png", content_type: "image/png")
site14.photos.attach(io: file_14_2, filename: "okdiver-2.png", content_type: "image/png")
site14.photos.attach(io: file_14_3, filename: "okdiver-3.png", content_type: "image/png")
site14.photos.attach(io: file_14_4, filename: "okdiver-4.png", content_type: "image/png")
site14.save!
puts "#{site14.name} created"

site15 = DiveSite.new(
  name: "Anilao",
  description: "Only a 2-hour drive away from Manila lies Anilao, one of the world's best macro photography destinations. Boasting a wide array of rare critters, it's literally a heaven-on-earth for muck diving, blackwater diving, and macro photography. ",
  country: "Philippines",
  country_iso: "PH",
  city: "Batangas",
  latitude: 13.720796,
  longitude: 121.050686,
  dive_type: DiveSite::TYPE[3],
  level: DiveSite::PROFICIENCY[0],
  image: "https://res.cloudinary.com/cloudinary972/image/upload/v1661459991/6_rqfjly.jpg"
)
site15.save!
site15.photos.attach(io: file_15_1, filename: "okdiver-image.png", content_type: "image/png")
site15.photos.attach(io: file_15_2, filename: "okdiver-2.png", content_type: "image/png")
site15.photos.attach(io: file_15_3, filename: "okdiver-3.png", content_type: "image/png")
site15.photos.attach(io: file_15_4, filename: "okdiver-4.png", content_type: "image/png")
site15.save!
puts "#{site15.name} created"


tag_names = %w[
Underwater\ fauna
Underwater\ flora
Phytoplankton
Red\ algae
Kelp
Sharks
Shipwreck
Reef
Pipefish
Lionfish
Ghost\ Pipefish
Seahorse
Comet\ Goldfish
Whales
Temperate\ diving
Tropical\ diving
Lake
Seals
Cold
Freshwater
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
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[7]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[3]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[9]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[10]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site1
dst.tag = tags[12]
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

dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[8]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[13]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[14]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site2
dst.tag = tags[15]
dst.save!

# 3
dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[5]
dst.save!

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

dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[11]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site3
dst.tag = tags[13]
dst.save!

# 4
dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[1]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[3]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[2]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[9]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site4
dst.tag = tags[14]
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

dst = DiveSiteTag.new
dst.dive_site = site5
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site5
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site5
dst.tag = tags[11]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site5
dst.tag = tags[13]
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

dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[7]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[9]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[13]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site6
dst.tag = tags[15]
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

dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[8]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[10]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[13]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site7
dst.tag = tags[15]
dst.save!

# 8
dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[0]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[1]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[3]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[8]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[10]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site8
dst.tag = tags[11]
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
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[7]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[11]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[13]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site9
dst.tag = tags[14]
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

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[7]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[9]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site10
dst.tag = tags[12]
dst.save!

# 11
dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[1]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[3]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[8]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[10]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[11]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[13]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[14]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[15]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site11
dst.tag = tags[7]
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

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[7]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[8]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[9]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site12
dst.tag = tags[10]
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

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[4]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[5]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[6]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[7]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[8]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[10]
dst.save!

dst = DiveSiteTag.new
dst.dive_site = site13
dst.tag = tags[11]
dst.save!
puts "dive site tags created"

# cloudinary images for users seeds

kieran = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974486/james-thornton-8VoDyBDvv0k-unsplash_egzyli.jpg")
marielle = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974947/francisco-jesus-navarro-hernandez-KzkL5-P1fDU-unsplash_todx71.jpg")
matt = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974952/sebastian-pena-lambarri-W5ODK261mLY-unsplash_ng9blq.jpg")
anais = URI.open("https://res.cloudinary.com/dg7mx0hnl/image/upload/v1662056695/T02NE0241-U03N82KV11P-306b8c200ec5-512_peo6kf.jpg")
marving = URI.open("https://res.cloudinary.com/dg7mx0hnl/image/upload/v1662066245/marving-moreton-montreal_ainmy8.jpg")
# seeding users

puts "creating users"

# user 1

kieran_user = User.create(
  email: "kieran@yopmail.com",
  password: "123456",
  first_name: "Kieran",
  last_name: "Dunch"
)

kieran_user.photo.attach(io: kieran, filename: "okdiver-image.png", content_type: "image/png")
kieran_user.save!
puts "#{kieran_user.first_name} created"

# user 2

marielle_user = User.create(
  email: "marielle@yopmail.com",
  password: "123456",
  first_name: "Marielle",
  last_name: "Montenegro"
)

marielle_user.photo.attach(io: marielle, filename: "okdiver-image.png", content_type: "image/png")
marielle_user.save!
puts "#{marielle_user.first_name} created"

# user 3

matt_user = User.create(
  email: "matt@yopmail.com",
  password: "123456",
  first_name: "Matt",
  last_name: "Tattah"
)

matt_user.photo.attach(io: matt, filename: "okdiver-image.png", content_type: "image/png")
matt_user.save!
puts "#{matt_user.first_name} created"

anais_user = User.create(
  email: "a@a.a",
  password: "123456",
  first_name: "Anais",
  last_name: "Roger"
)
anais_user.photo.attach(io: anais, filename: "okdiver-image.png", content_type: "image/png")
anais_user.save!
puts "#{anais_user.first_name} created"


marving_user = User.create(
  email: "b@b.b",
  password: "123456",
  first_name: "Marving",
  last_name: "Moreton"
)
marving_user.photo.attach(io: marving, filename: "okdiver-image.png", content_type: "image/png")
marving_user.save!
puts "#{marving_user.first_name} created"

# create reviews for the users
kieran_review_a = Review.new(
  rating: 5,
  highlight: "The manta rays were majestic!",
  tips: "Pack warm clothes it was chilly"
)
kieran_review_a.user = kieran_user
kieran_review_a.dive_site = site2
kieran_review_a.save!

kieran_review_b = Review.new(
  rating: 5,
  highlight: "A stunning and well preserved wreck!",
  tips: "Be careful the windows to enter are small!"
)
kieran_review_b.user = kieran_user
kieran_review_b.dive_site = site1
kieran_review_b.save!

kieran_review_c = Review.new(
  rating: 4,
  highlight: "The tranquility was unique!",
  tips: "Leave early because its quite far off the coast"
)
kieran_review_c.user = kieran_user
kieran_review_c.dive_site = site3
kieran_review_c.save!

marielle_review_a = Review.new(
  rating: 4,
  highlight: "Very quiet spot, not too crowded",
  tips: "Make sure you have lots of air, there is a lot to see!"
)
marielle_review_a.user = marielle_user
marielle_review_a.dive_site = site1
marielle_review_a.save!

marielle_review_b = Review.new(
  rating: 5,
  highlight: "The turtles were so playful!",
  tips: "Keep your hands close to your chest to not scare the turtles"
)
marielle_review_b.user = marielle_user
marielle_review_b.dive_site = site2
marielle_review_b.save!

marielle_review_c = Review.new(
  rating: 4,
  highlight: "The reefs were so colourful",
  tips: "None, just enjoy!!"
)
marielle_review_c.user = marielle_user
marielle_review_c.dive_site = site3
marielle_review_c.save!

matt_review_a = Review.new(
  rating: 5,
  highlight: "The visibility was awesome!",
  tips: "Bring snacks!"
)
matt_review_a.user = matt_user
matt_review_a.dive_site = site1
matt_review_a.save!

matt_review_b = Review.new(
  rating: 5,
  highlight: "The turtles!!",
  tips: "Stay in small groups"
)
matt_review_b.user = matt_user
matt_review_b.dive_site = site2
matt_review_b.save!

matt_review_c = Review.new(
  rating: 5,
  highlight: "Very clean spot.",
  tips: "Avoid staying too late"
)
matt_review_c.user = matt_user
matt_review_c.dive_site = site3
matt_review_c.save!

marving_review_a = Review.new(
  rating: 5,
  highlight: "So many fish!!",
  tips: "Bring lots of snacks"
)
marving_review_a.user = marving_user
marving_review_a.dive_site = site2
marving_review_a.save!

marving_review_b = Review.new(
  rating: 5,
  highlight: "Such a beautiful dive!",
  tips: "Watch out for the fire coral"
)
marving_review_b.user = marving_user
marving_review_b.dive_site = site1
marving_review_b.save!

marving_review_c = Review.new(
  rating: 5,
  highlight: "The stingrays were huge!",
  tips: "Take plenty of water!"
)
marving_review_c.user = marving_user
marving_review_c.dive_site = site3
marving_review_c.save!

puts "reviews created"

anais_log1 = Log.new(
  date: Date.new(2022, 8, 1),
  dive_number: 1,
  depth: 20,
  time_in: Time.now,
  time_out: Time.now + 10.minutes
)
anais_log1.user = anais_user
anais_log1.dive_site = site10
anais_log1.save!

anais_log2 = Log.new(
  date: Date.new(2022, 8, 10),
  dive_number: 2,
  depth: 15,
  time_in: Time.now,
  time_out: Time.now + 15.minutes
)
anais_log2.user = anais_user
anais_log2.dive_site = site9
anais_log2.save!

anais_log3 = Log.new(
  date: Date.new(2022, 8, 18),
  dive_number: 3,
  depth: 12,
  time_in: Time.now,
  time_out: Time.now + 13.minutes
)
anais_log3.user = anais_user
anais_log3.dive_site = site8
anais_log3.save!
