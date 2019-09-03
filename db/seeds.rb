# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pinguino = User.create([{ email: 'pinguino@ping.sg' }, { password: '11111111' }, { password_confirmation: '11111111' }])
maialino = User.create([{ email: 'maialino@surreydockfarm.co.uk' }, { password: '11111111' }, { password_confirmation: '11111111' }])


chill = Video.create([{ title: 'Chillhop Beats to swim/tan to' }, { url: 'W0dOwXP-2to' }, { user_id: 1 }])

tunak = Video.create([{ title: 'Study Beats 4' }, { url: '8iU8LPEa4o0' }, { user_id: 2 }])

boy = Video.create([{ title: 'Cowboy Bebop | Lofi Jazzhop Mix' }, { url: 'Z-Rl3LhVakc' }, { user_id: 1 }])

jazzt = Video.create([{ title: 'Jazzy Town | Lofi & JazzHop' }, { url: 'u4ENF5OCtkY' }, { user_id: 2 }])
