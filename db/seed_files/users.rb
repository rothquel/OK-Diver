# require "open-uri"

def create_users
  # cloudinary images for users seeds

  kieran = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974486/james-thornton-8VoDyBDvv0k-unsplash_egzyli.jpg")
  marielle = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974947/francisco-jesus-navarro-hernandez-KzkL5-P1fDU-unsplash_todx71.jpg")
  matt = URI.open("https://res.cloudinary.com/dbb3sntqk/image/upload/v1661974952/sebastian-pena-lambarri-W5ODK261mLY-unsplash_ng9blq.jpg")

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

  puts "reviews created"
end
