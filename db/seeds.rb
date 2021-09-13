# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(email: "test@example.com", password: "password")
# puts "ユーザの初期データインポートに成功しました"
ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE foods RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

Food.create!(name: "沖縄そば", content: "そば粉が入ってない小麦粉のみで作られたそば", user_id: user1.id)
Food.create!(name: "ゴーヤーチャンプルー", content: "ゴーヤーがメイン、豆腐、スパム、卵を炒めた料理", user_id: user2.id)
Food.create!(name: "タコス", content: "メキシコ料理が入ってきた。トルティーヤと肉、トマト、レタスを包んだ軽食", user_id: user3.id)

puts "初期データの投入に成功しました！"
