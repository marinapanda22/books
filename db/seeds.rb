# Создание пользователей
admin = User.create!(email: 'admin@example.com', password: 'password', role: 'admin', name: Faker::HarryPotter.character)
admin.save
user = User.create!(email: 'user@example.com', password: 'password', role: 'none', name: Faker::HarryPotter.character)
user.save

dir = Rails.root + 'app' + 'assets' + 'images'

10.times do
  Book.create(title:Faker::HarryPotter.location,active: true, desc: Faker::Lorem.paragraph, image:File.new(dir + "1.jpg"),
              user_id: 1
  )
end
10.times do
  Book.create(title:Faker::HarryPotter.location, active: true, desc: Faker::Lorem.paragraph, image:File.new(dir + "2.jpg"),
              user_id: 1
  )
end
10.times do
  Book.create(title:Faker::HarryPotter.location, active: true, desc: Faker::Lorem.paragraph, image:File.new(dir + "3.jpg"),
              user_id: 2
  )
end
10.times do
  Book.create(title:Faker::HarryPotter.location, active: true, desc: Faker::Lorem.paragraph, image:File.new(dir + "4.jpg"),
              user_id: 2
  )
end