# Создание пользователей
admin = User.create!(email: 'admin@example.com', password: 'password', role: 'admin', name: Faker::HarryPotter.character)
admin.save
user = User.create!(email: 'user@example.com', password: 'password', role: 'none', name: Faker::HarryPotter.character)
user.save

drama_category = Category.create(title: 'Drama')
new_category = Category.create(title: 'New')
horror_category = Category.create(title: 'Horror')
adventure_category = Category.create(title: 'Adventure')
nature_category = Category.create(title: 'Nature')

dir = Rails.root + 'app' + 'assets' + 'images'

10.times do
  Book.create(title:Faker::HarryPotter.location,active: true, category_id: 1, desc: Faker::Lorem.paragraph, image:File.new(dir + "1.jpg"),
              user_id: 1
  )
end
10.times do
  Book.create(title:Faker::HarryPotter.location, active: true, category_id: 2, desc: Faker::Lorem.paragraph, image:File.new(dir + "2.jpg"),
              user_id: 1
  )
end
10.times do
  Book.create(title:Faker::HarryPotter.location, active: true, category_id: 3, desc: Faker::Lorem.paragraph, image:File.new(dir + "3.jpg"),
              user_id: 2
  )
end
10.times do
  Book.create(title:Faker::HarryPotter.location, active: true, category_id: 4, desc: Faker::Lorem.paragraph, image:File.new(dir + "4.jpg"),
              user_id: 2
  )
end