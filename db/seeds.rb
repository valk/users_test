# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do |t|
  Designer.create! email: "val.hoffman+#{t}@gmail.com", name: "Designer-#{t}", second_name: "K", photo: "/etc/photo/#{t}.jpg", password: "asdfasdf"
end

20.times do |t|
  Shop.create!  email: "val.hoffman+#{t}@gmail.com", name: "Shop-#{t}", details: "Cool shop #{t}", password: "asdfasdf"
end
