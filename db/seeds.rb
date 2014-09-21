# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   user = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
   user1 = User.create!(
   	id: 10000,
   	email: 'chrismikelson@gmail.com', 
   	password: 'productmash'
   	)
