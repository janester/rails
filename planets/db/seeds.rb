Planet.delete_all
Planet.create(:name =>"earth", :orbit=>1, :moons=>1)
Planet.create(:name =>"mars", :orbit=>1.5, :moons=>2)
Planet.create(:name =>"venus", :orbit=>0.3, :moons=>0)
Planet.create(:name =>"jupiter", :orbit=>3.7, :moons=>7)
Planet.create(:name =>"neptune", :orbit=>8.6, :moons=>3)
