Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => "classical")
g2 = Genre.create(:name => "rock")
g3 = Genre.create(:name => "top 40")
g4 = Genre.create(:name => "country")

s1 = Song.create(:name => "Thriller", :filename =>"", :price =>1.00)
s2 = Song.create(:name => "That Don't Impress Me Much", :filename =>"", :price =>1.00)
s3 = Song.create(:name => "I knew you were trouble", :filename =>"i_knew_you_were_trouble.mp3", :price =>1.25)
s4 = Song.create(:name => "Call Your Girlfriend", :filename =>"Call_your_girlfriend.mp3", :price =>1.25)
s5 = Song.create(:name => "Sympathy for the Devil", :filename =>"sympathy_for_the_devil.mp3", :price =>1.25)

a1 = Album.create(:name => "Thriller")
a2 = Album.create(:name => "Come On Over")
a3 = Album.create(:name => "Red")
a4 = Album.create(:name => "Forty Licks")

r1 = Artist.create(:name => "Michael Jackson")
r2 = Artist.create(:name => "Shania Twain")
r3 = Artist.create(:name => "Taylor Swift")
r4 = Artist.create(:name => "Robyn")
r5 = Artist.create(:name => "The Rolling Stones")

u1 = User.create(:name => "Jane", :image => "asmhkjas", :password => "abc", :password_confirmation => "abc", :balance => 5.42)
u3 = User.create(:name => "admin", :image => "asas", :password => "abc", :password_confirmation => "abc", :balance => 1000000.00)


m1 = Mixtape.create(:name => "Easy Listening")
m2 = Mixtape.create(:name => "Workout Music")
m3 = Mixtape.create(:name => "Old School")

r1.songs << s1
r2.songs << s2
r3.songs << s3
r4.songs << s3
r3.songs << s4

a1.songs << s1
a2.songs << s2
a3.songs << s4
a4.songs << s5

g2.songs << s5 << s1
g4.songs << s2
g3.songs = [s1, s2, s3, s4, s5]

u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]

m3.songs = [s1, s2, s3]
m1.songs = [s2, s3, s4]

u1.albums = [a1, a2]

u3.is_admin = true
u3.save


