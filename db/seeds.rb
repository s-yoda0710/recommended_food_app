# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(email: "test@example.com", password: "password")
# puts "ユーザの初期データインポートに成功しました"
email = "test@example.com"
password = "password"

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE foods RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

user1.foods.create!(name: "沖縄そば", content: "そば粉が入ってないそば")
user2.foods.create!(name: "ゴーヤーチャンプルー", content: "ゴーヤーと豆腐、スパム、卵を炒めた料理")
user3.foods.create!(name: "タコス", content: "タコスミート、トマト、レタスをトルティーヤで包んだもの")
user1.foods.create!(name: "てびち", content: "豚足のブヨブヨしたやつ")
user3.foods.create!(name: "島豆腐", content: "内容よくわかってない")
user2.foods.create!(name: "紅芋タルト", content: "紅芋で作ったタルト")

User.create!(email: email, password: password)

puts "初期データの投入に成功しました！"
