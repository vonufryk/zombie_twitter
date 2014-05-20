if User.count == 0
  puts "Creating Rob Zombie user"
  User.create(:email=>'robzombie@gmail.com', :password=>'superpassword')
end