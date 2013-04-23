Artist.delete_all
Album.delete_all
Song.delete_all

a1 = Artist.create(name:"Adele")
a2 = Artist.create(name:"Taylor Swift")
a3 = Artist.create(name:"Shania Twain")


a1.albums << b1 = Album.create(name:"21")
a1.albums << b2 = Album.create(name:"19")
a3.albums << b3 = Album.create(name:"Come on Over")
a3.albums << b4 = Album.create(name:"Something Else")
a2.albums << b5 = Album.create(name:"Fearless")
a2.albums << b6 = Album.create(name:"Red")

b5.songs << c2 = Song.create(name:"Breathe", filename:"Breathe.mp3", track:1)
b5.songs << c4 = Song.create(name:"Fearless", filename:"Fearless.m4a", track:2)
b6.songs << c5 = Song.create(name:"Forever and for Always", filename:"forever_and_for_always.m4a", track:3)
b6.songs << c6 = Song.create(name:"Hey Stephen", filename:"hey_stephen.m4a", track:4)
b5.songs << c8 = Song.create(name:"Love Story", filename:"love_story.mp3", track:5)


b1.songs << c10 = Song.create(name:"Rolling in the Deep", filename:"rolling_in_the_deep.mp3", track:1)
b2.songs << c11 = Song.create(name:"Rumor Has It", filename:"rumor_has_it.mp3", track:2)
b1.songs << c12 = Song.create(name:"Set Fire to the Rain", filename:"set_fire_to_the_rain.mp3", track:3)
b2.songs << c14 = Song.create(name:"Turning Tables", filename:"turning_tables.mp3", track:4)


b3.songs << c15 = Song.create(name:"When", filename:"When.mp3", track:1)
b4.songs << c13 = Song.create(name:"That Don't Impress Me Much", filename:"that_don't_impress_me_much.mp3", track:2)
b3.songs << c9 = Song.create(name:"Man! I Feel like a Woman!", filename:"man_i_feel_like_a_woman.mp3", track:3)
b4.songs << c7 = Song.create(name:"Honey, I'm Home", filename:"honey_im_home.mp3", track:4)
b3.songs << c3 = Song.create(name:"Come On Over", filename:"come_on_over.mp3", track:5)
b4.songs << c1 = Song.create(name:"Black Eyes Blue Tears", filename:"black_eyes_blue_tears.mp3", track:6)



