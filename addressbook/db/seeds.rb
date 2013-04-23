# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first      :string(255)
#  last       :string(255)
#  dob        :date
#  email      :string(255)
#  phone      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null

Person.delete_all

p1 = Person.create(first:"Bob", last:"Knob", dob:Date.current-21.years, phone:"164698716254", email:"bob@bob.com")
p2 = Person.create(first:"Bill", last:"Drill", dob:Date.current-31.years, phone:"19176549276", email:"bill@bill.com")
p3 = Person.create(first:"Buster", last:"Duster", dob:Date.current-25.years, phone:"12122735638", email:"buster@buster.com")
