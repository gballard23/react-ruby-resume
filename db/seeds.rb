
puts 'seeding...'

Info.create(name: 'Gerren Ballard', location: "San Antonio, Tx ", phone: '903.357.8834', email:'gerren.keith23@gmail.com')
Social.create(name: 'Linkedin', link: 'https://www.linkedin.com/in/gerren-ballard-161047134/', info_id: 1)
Social.create(name: 'Instagram', link: 'https://www.instagram.com/gerrenkeith_/', info_id: 1)

puts 'seeded.' 

