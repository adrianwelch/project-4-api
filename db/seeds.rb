[User, Trip, Leg, Comment].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end


adrian = User.create!(username: "adrian", email: "adrian@gmail.com", password: "password", password_confirmation: "password")
mike = User.create!(username: "mickyginger", email: "mike.hayden@ga.co", password: "password", password_confirmation: "password")

ball = Trip.create!(title: "Vietnam 2017", user: adrian, joiners: [mike])
chain = Leg.create(trip: ball, date: Date.new(2016, 8, 5), location: "Hanoi", description:"very busy city")

nice = Comment.create(trip: ball, user: mike, body: "What a trip!")
