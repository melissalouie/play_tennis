# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Melissa', last_name: 'Louie', email: 'melissa@mail.com', password: 'password')

Ability.create(level: '2.0 - New to tennis')
Ability.create(level: '2.5 - Very Beginner')
Ability.create(level: '3.0 - Beginner, has had court experience')
Ability.create(level: '3.5 - Beginner to Intermediate, has some consistency with shots')
Ability.create(level: '4.0 - Intermediate, has match experience and consistency and accuracy with shots')
Ability.create(level: '4.5 - Intermediate to Advanced, has competitive experience in the past')
Ability.create(level: '5.0 - Advanced, has collegiate competitive ')
Ability.create(level: '6.0 - Very Advanced, has Division I collegiate experience, semi-pro, etc.')
