Book.delete_all
Recipe.delete_all
Ingredient.delete_all


b1 = Book.create(:title => "The Joy of Cooking", :cuisine => "All", :chef => "The Rombauers", :cover => "http://www.carolebloom.com/joy.jpg")

r1 = Recipe.create(:name =>"Mac and Cheese", :course =>"Entree", :cooktime=>45, :servingsize=>6, :instructions=>"Mix pasta with cheese", :image=>"http://eatathomecooks.com/wp-content/uploads/2009/06/macaroni-and-cheese-done-1024x680.jpg")
r2 = Recipe.create(:name =>"Lasagna", :course =>"Entree", :cooktime=>180, :servingsize=>6, :instructions=>"bake Lasagna", :image=>"http://24.media.tumblr.com/tumblr_lc9di0ihEU1qcyjm3o1_400.jpg")
r3 = Recipe.create(:name =>"Chicken Pot Pie", :course =>"Entree", :cooktime=>115, :servingsize=>4, :instructions=>"bake pot pie", :image=>"http://4.bp.blogspot.com/-OMOu7gXdNJ4/TyYY4wUmaBI/AAAAAAAAILI/Q6-pGwWfg8c/s1600/928370_f520.jpg")

i1 = Ingredient.create(:name=>"pasta", :measurement =>"3 cups", :cost=>4.50, :image=> "http://pad2.whstatic.com/images/thumb/4/4d/Microwave-Pasta-Step-1.jpg/550px-Microwave-Pasta-Step-1.jpg")
i2 = Ingredient.create(:name=>"tomato", :measurement =>"10 cups", :cost=>3.00, :image=> "http://si.wsj.net/public/resources/images/PJ-BK092_TOMATO_G_20121008173600.jpg")
i3 = Ingredient.create(:name=>"cheddar cheese", :measurement =>"4 cups", :cost=>6.00, :image=> "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT313txajHPQurAqiTPpgMeVtZ9JQJeIK-cLGQ0xYGPTKL8meZN")
i4 = Ingredient.create(:name=>"butter", :measurement =>"2 sticks", :cost=>0.75, :image=> "http://bonappetithon.files.wordpress.com/2010/03/butter.jpg")
i5 = Ingredient.create(:name=>"chicken", :measurement =>"2 breasts", :cost=>7.25, :image=> "http://www.parenthub.com.au/wp-content/uploads/Chicken-breast-cutting-board.jpg")
i6 = Ingredient.create(:name=>"potatoes", :measurement =>"4 whole", :cost=>1.75, :image=> "http://static.ddmcdn.com/gif/potatoes-1.jpg")

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i1, i3, i4]
r2.ingredients = [i1, i2]
r3.ingredients = [i5, i6, i4]


