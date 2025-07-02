msg = "hello"
msg.freeze

cloned_msg = msg.clone

puts cloned_msg.frozen? 
cloned_msg.replace("bye")  
