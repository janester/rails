Planet.delete_all
Satellite.delete_all

p1 = Planet.create(name:"Earth", image:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ9cVuekGoaYI7Zsi8AW3a6hFAxm2CIBYI4KxhPFM8NuliVQOxiqw")
p2 = Planet.create(name:"Mars", image:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcScnlo7Q5iOU2e5G8Ny_TURdXUKufqFBg4fJ99QvgcfsLsq_EVF")
p3 = Planet.create(name:"Jupiter", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJgf6bwzbNBCrVL73cVOuZjqyecE9Bidwg9KMXrkibopjb9K0M")


s1 = Satellite.create(name:"Moon", distance:10, diameter:20, period:100, image:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTqBYWr8lzNKae9kvsH7oMzyBZlKeXNHs074d-3xJPyozAbemg8")
s2 = Satellite.create(name:"Phobos", distance:10, diameter:20, period:100, image:"http://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Phobos_colour_2008.jpg/250px-Phobos_colour_2008.jpg")
s3 = Satellite.create(name:"Metis", distance:10, diameter:20, period:100, image:"http://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Metis.jpg/50px-Metis.jpg")
s4 = Satellite.create(name:"Adrastea", distance:10, diameter:20, period:100, image:"http://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Adrastea.jpg/50px-Adrastea.jpg")
s5 = Satellite.create(name:"Amalthea", distance:10, diameter:20, period:100, image:"http://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Amalthea_PIA02532.png/50px-Amalthea_PIA02532.png")

p1.satellites << s1
p2.satellites << s2
p3.satellites << s3 << s4 << s5