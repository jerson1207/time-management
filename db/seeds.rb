@user1 = User.create(email: "user1@test.com", password: "123456", password_confirmation: "123456", first_name: "Juan", last_name: "Tester")
puts "user1@test.com created"

10.times do |post|
  Post.create!(date: Date.today, body: "#{post + 1} body content", user_id: @user1.id)
end
puts "10 posts created for user Pedro"

AdminUser.create(email: "admin1@test.com",  password: "123456", password_confirmation: "123456", first_name: "Boss", last_name: "Chief")
puts "admin1@test.com"
