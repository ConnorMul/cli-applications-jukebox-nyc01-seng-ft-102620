# Add your code here
def say_hello(name)
  puts "Hi #{name}"
end 

puts "Enter your name:"
users_name = gets.strip

puts say_hello(users_name)