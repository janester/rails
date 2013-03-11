User.delete_all

u1 = User.create(:email => "jane@jane.com", :password => "abc", :password_confirmation => "abc", :cash_balance => 1000000)
u2 = User.create(:email => "bob@bob.com", :password => "abc", :password_confirmation => "abc", :cash_balance => 500000)

