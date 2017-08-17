# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.new(email:'test@test.com').save
User.new(email:'info@test.com').save
User.new(email:'random@test.com').save
User.new(email:'ttt@test.com').save
User.new(email:'iiii@test.com').save

ShortenedUrl.new(long_url: 'www.google.com', user_id: 1 ).save
ShortenedUrl.new(long_url: 'www.facebook.com', user_id: 2 ).save
ShortenedUrl.new(long_url: 'www.instagram.com', user_id: 3 ).save
ShortenedUrl.new(long_url: 'www.yahoo.com', user_id: 4 ).save
ShortenedUrl.new(long_url: 'www.huffingtonpost.com', user_id: 5 ).save

Visit.new(visitor_id: 1, url_id:1).save
Visit.new(visitor_id: 1, url_id:2).save
Visit.new(visitor_id: 1, url_id:3).save
Visit.new(visitor_id: 1, url_id:4).save
Visit.new(visitor_id: 2, url_id:1).save
Visit.new(visitor_id: 2, url_id:1).save
Visit.new(visitor_id: 4, url_id:3).save
