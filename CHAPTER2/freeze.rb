numbers = ["one", "two", "three"]
numbers.freeze

begin
  numbers[2] = "four"
rescue => e
  puts "Error: #{e}"
end

numbers[2].replace("four")
puts numbers.inspect
