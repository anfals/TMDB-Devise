# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w(Ash Gary Misty Brock).each do |name|
  User.create username: name, email: name+"@me.com", password: 'password'
end


#action movies seed = FightClub
movie1 = Movie.create(movie_db_id: 550)
movie2 = Movie.create(movie_db_id: 268)
movie3 = Movie.create(movie_db_id: 155)
movie4 = Movie.create(movie_db_id: 364)
movie5 = Movie.create(movie_db_id: 272)
movie6 = Movie.create(movie_db_id: 1452)
movie7 = Movie.create(movie_db_id: 99861)
movie8 = Movie.create(movie_db_id: 1924)
movie9 = Movie.create(movie_db_id: 11253)
movie10 = Movie.create(movie_db_id: 414)
movie11 = Movie.create(movie_db_id: 415)
movie12 = Movie.create(movie_db_id: 379291)
movie13 = Movie.create(movie_db_id: 1927)
movie14 = Movie.create(movie_db_id: 49026)
movie15 = Movie.create(movie_db_id: 141052)
movie16 = Movie.create(movie_db_id: 8536)
movie17 = Movie.create(movie_db_id: 9531)
movie18 = Movie.create(movie_db_id: 13640)
movie19 = Movie.create(movie_db_id: 63)
movie20 = Movie.create(movie_db_id: 280)
movie21 = Movie.create(movie_db_id: 948)


r1 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie1.id)
r2 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie2.id)
r3 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie3.id)
r4 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie4.id)
r5 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie5.id)
r6 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie6.id)
r7 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie7.id)
r8 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie8.id)
r9 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie9.id)
r10 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie10.id)
r11 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie11.id)
r12 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie12.id)
r13 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie13.id)
r14 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie14.id)
r15 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie15.id)
r16 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie16.id)
r17 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie17.id)
r18 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie18.id)
r19 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie19.id)
r20 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie20.id)
r21 = Rating.create(thumbs_up: true, user_id: 1, movie_id: movie21.id)


#Sci Fi, Seed = Star Wars
movie22 = Movie.create(movie_db_id: 11)
movie23 = Movie.create(movie_db_id: 1891)
movie24 = Movie.create(movie_db_id: 201)
movie25 = Movie.create(movie_db_id: 172)
movie26 = Movie.create(movie_db_id: 199)
movie27 = Movie.create(movie_db_id: 1892)
movie28 = Movie.create(movie_db_id: 1894)
movie29 = Movie.create(movie_db_id: 330459)
movie30 = Movie.create(movie_db_id: 140607)
movie31 = Movie.create(movie_db_id: 13475)
movie32 = Movie.create(movie_db_id: 1895)
movie33 = Movie.create(movie_db_id: 174)
movie34 = Movie.create(movie_db_id: 152)

r22 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie22.id)
r23 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie23.id)
r24 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie24.id)
r25 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie25.id)
r26 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie26.id)
r27 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie27.id)
r28 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie28.id)
r29 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie29.id)
r30 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie30.id)
r31 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie31.id)
r32 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie32.id)
r33 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie33.id)
r34 = Rating.create(thumbs_up: true, user_id: 2, movie_id: movie34.id)

# Fifty Shades Freed
# 337167
# Zootopia
# 269149
# Coco
# 354912
# Rampage
# 427641
# Black Panther
# 284054
# Star Wars: The Last Jedi
# 181808
# Avengers: Infinity War
# 299536
# Beauty and the Beast
# 321612
# A Quiet Place
# 447332
# Geostorm
# 274855
# The Maze Runner
# 198663
# Pitch Perfect 3
# 353616
# Thor: Ragnarok
# 284053
# Ready Player One
# 333339
# Sleight
# 347882
# Guardians of the Galaxy
# 118340
# 15+ IQ Krachoot
# 483877
# The Avengers
# 24428
# John Wick
# 245891
# The Shape of Water
# 399055









