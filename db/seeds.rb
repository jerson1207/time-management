@user = User.create(email: "user2@test.com", password: "123456", password_confirmation: "123456", first_name: "Juan", last_name: "Tester")
puts "user2@test.com created"


10.times do |post|
  Post.create!(date: Date.today, body: "#{post} body content", user_id: @user.id)
end
puts "10 posts created"