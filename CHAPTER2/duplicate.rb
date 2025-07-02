original = "hello"
duplicate = original.dup

puts original.object_id      
puts duplicate.object_id     

duplicate.replace("world")
puts original 
puts duplicate 
