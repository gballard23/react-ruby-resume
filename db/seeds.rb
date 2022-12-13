
puts 'seeding...'

Info.create(name: 'Gerren Ballard', location: "San Antonio, Tx", phone: '903.357.8834', email:'gerren.keith23@gmail.com', about: 'My name is Gerren.')
Social.create(name: 'Linkedin', link: 'https://www.linkedin.com/in/gerren-ballard-161047134/', info_id: 1)
Social.create(name: 'Instagram', link: 'https://www.instagram.com/gerrenkeith_/', info_id: 1)
Social.create(name: 'Facebook' , link: 'https://www.facebook.com/gerren.ballard/', info_id: 1)

puts 'seeded.' 

