Painting.delete_all
Artist.delete_all

Artist.create(:name =>"Vincent van Gogh", :nationality=>"Dutch", :dob => "1853/3/30", :period=>"post-impressionism", :image =>"http://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg/474px-Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg")
Artist.create(:name =>"Pablo Picasso", :nationality=>"Spanish", :dob => "1881/10/25", :period=>"cubism", :image => "http://upload.wikimedia.org/wikipedia/commons/9/98/Pablo_picasso_1.jpg")
Artist.create(:name =>"Henri Matisse", :nationality=>"French", :dob => "1869/12/31", :period=>"post-impressionism", :image => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgR1Vcf_xJNLfTvLUC5IUvuc4dKRNPNCBb6JTtnOkqgtubDgFaFQkDNoKpLA")
Artist.create(:name =>"Leonardo Da Vinci", :nationality=>"Italian", :dob => "1452/4/15", :period=>"Italian renaissance", :image => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ08pmj6pjguMMpuFzUkvTNMBWFaSJIU97or30hi2bm1XOBVwxlaJ9LG9hcXQ")
Artist.create(:name =>"Claude Monet", :nationality=>"French", :dob => "1840/11/14", :period=>"impressionism", :image => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3u2NpBl-swN2GDIsuUGFD1gqLMqJIHDrEB0ItdZaw_JS5M9uhbqToM4WZQA")

Painting.create(:title =>"Sunrise", :year =>1873, :medium =>"oil paint", :style =>"impressionism", :image =>"http://claude-monet.org/artbase/Monet/1873-1873/w0263/apc.jpg")
Painting.create(:title =>"Les Demoiselles d'Avignon", :year => 1907, :medium =>"oil paint", :style =>"cubism", :image =>"http://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Les_Demoiselles_d%27Avignon.jpg/300px-Les_Demoiselles_d%27Avignon.jpg")
Painting.create(:title =>"The Starry Night", :year => 1889, :medium =>"oil paint", :style =>"post-impressionism", :image =>"http://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/300px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg")
Painting.create(:title =>"Woman with a Hat", :year => 1905, :medium =>"oil paint", :style =>"post-impressionism", :image =>"http://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Matisse-Woman-with-a-Hat.jpg/300px-Matisse-Woman-with-a-Hat.jpg")
Painting.create(:title =>"Mona Lisa", :year => 1519, :medium =>"oil paint", :style =>"Italian renaissance", :image =>"http://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/250px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg")





