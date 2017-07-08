# Создание пользователей
admin = User.create!(email: 'admin@example.com', password: 'password', role: 'admin', name: Faker::HarryPotter.character)
admin.save
user = User.create!(email: 'user@example.com', password: 'password', role: 'none', name: Faker::HarryPotter.character)
user.save