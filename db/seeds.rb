10.times do |post|
  Post.create!(date: Date.today, body: "#{post}body content")
end

puts "10 Posts have been created"