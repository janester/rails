User.delete_all
Task.delete_all
Priority.delete_all

u1 = User.create(:name => "jane", :email => "jane@jane.com", :password => "abc", :password_confirmation => "abc")
u2 = User.create(:name => "bob", :email => "bob@bob.com", :password => "abc", :password_confirmation => "abc")

t1 = Task.create(:title => "Do Homework", :desc => "javascript and ajax!", :duedate => "2013-3-1", :address => "251 West 98th Street, New York, New York")
t2 = Task.create(:title => "Walk Dog", :desc => "take fin around the block", :duedate => "2013-3-1", :address => "Big Ben")
t3 = Task.create(:title => "Work on Portfolio", :desc => "add this app!", :duedate => "2013-4-1", :address => "10 East 21st Street, New York")

p1 = Priority.create(:name =>"High", :color => "#ff0a0a", :ranking => 3)
p2 = Priority.create(:name =>"Medium", :color => "#f3ff0a", :ranking => 2)
p3 = Priority.create(:name =>"Low", :color => "#0f9631", :ranking => 1)



u2.tasks << t3 << t1 << t2
u2.save

u1.priorities = [p1, p2, p3]
u1.save
u2.priorities = [p1, p2, p3]
u2.save

