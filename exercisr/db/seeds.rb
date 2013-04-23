User.delete_all
Exercise.delete_all

u1 = User.create(:email => "jane@jane.com", :password => "abc", :password_confirmation => "abc")

e1 = Exercise.create(:activity => "Crunches", :amount => "200", :unit => "reps", :completed_on => "2013-03-07")
e2 = Exercise.create(:activity => "Running", :amount => "3", :unit => "miles", :completed_on => "2013-03-08")
e3 = Exercise.create(:activity => "Swimming", :amount => "30", :unit => "laps", :completed_on => "2013-03-09")
e4 = Exercise.create(:activity => "Squats", :amount => "20", :unit => "reps", :completed_on => "2013-03-10")
e5 = Exercise.create(:activity => "Lunges", :amount => "20", :unit => "reps", :completed_on => "2013-03-11")
e6 = Exercise.create(:activity => "Biking", :amount => "10", :unit => "miles", :completed_on => "2013-03-12")
e7 = Exercise.create(:activity => "Push Ups", :amount => "30", :unit => "reps", :completed_on => "2013-03-13")

u1.exercises << e1 << e2 << e3 << e4 << e5 << e6 << e7