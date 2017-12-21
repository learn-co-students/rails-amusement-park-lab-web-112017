20.times do
  User.create(
    name: Faker::Name.name,
    password: Faker::Dessert.variety,
    height: rand(1..10),
    happiness: rand(1..10),
    tickets: rand(1..10),
  )
end

20.times do
  Attraction.create(
    name: Faker::Superhero.name,
    min_height: rand(1..10),
    nausea_rating: rand(1..10),
    happiness_rating: rand(1..10),
    tickets: rand(1..10)
  )
end

20.times do
  Ride.create(user: User.all.sample, attraction: Attraction.all.sample)
end
