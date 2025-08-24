# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Event.destroy_all
Attendance.destroy_all

e1 = Event.create!(
  title: "Railsもくもく会",
  starts_at: 2.days.from_now.change(hour: 19, min: 0),
  ends_at: 2.days.from_now.change(hour: 21, min: 0),
  location: "オンライン",
  capacity: 10,
  description: "初心者歓迎！進捗ゆるっと共有。"
)

e2 = Event.create!(
  title: "週末ハッカソン",
  starts_at: 5.days.from_now.change(hour: 10, min: 0),
  ends_at: 5.days.from_now.change(hour: 18, min: 0),
  location: "渋谷コワーキング",
  description: "小さく作って発表まで！"
)

e1.attendances.create!(name: "user1")
e1.attendances.create!(name: "user2")
