# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Melissa', last_name: 'Louie', email: 'melissa@mail.com', password: 'password', address: '1560 Boulder Street, Denver, CO 80211')
User.create(first_name: 'Buddy', last_name: 'Louie', email: 'buddy@mail.com', password: 'password', address: '7066 South Niagara Court, Centennial, CO, 80112')
