@user1 = User.create( email: "user1@test.com", 
                      password: "123456",         
                      password_confirmation: "123456", 
                      first_name: "Juan", 
                      last_name: "Tester" )

puts "1 user created"

AdminUser.create( email: "admin1@test.com",  
                  password: "123456", 
                  password_confirmation: "123456", 
                  first_name: "Boss", 
                  last_name: "Chief" )

puts "1 admin created"
10.times do |post|
	Post.create!(date: Date.today, body: "#{post} work_performed content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @user1.id, request: 12.5)
end

puts "10 Posts have been created"  

