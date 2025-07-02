def greet(name, greeting = "Hello")
  puts "#{greeting}, #{name}!"
end

greet("Swetha", "Hi")
greet("Swetha")

def default_args(a, b, c = 1)
  puts "Values of variables:", a, b, c
end

default_args(3, 2)

default_args(4, 5, 6)