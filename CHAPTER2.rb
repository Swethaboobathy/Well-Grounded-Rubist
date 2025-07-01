#CHAPTER - 2 [BUILT-IN CLASSES AND MODULES]
  #OBJECT WITH CUSTOM METHOD
    lamp = Object.new
    def lamp.turn_on
    puts "The lamp is now on."
    end
    def lamp.turn_off
    puts "The lamp is now off."
    end
    lamp.turn_on     
    lamp.turn_off  
  
#MULTIPLE SIMILAR OBJECT TO CREATE A CLASS
  class Dog
  def bark
  puts "Woof!"
  end
  def sit
  puts "The dog sits down."
  end
  end
  dog1 = Dog.new
  dog2 = Dog.new
  dog1.bark   
  dog2.sit 

#METHOD WITH ARGUMENT
 obj = Object.new
 def obj.c2f(c)
 c * 9.0 / 5 + 32
 end
 puts obj.c2f(100)

  #METHOD WITHOUT PARENTHESES
   def greeter.goodbye name
   puts "Goodbye, #{name}."
   end
   greeter.goodbye "Swetha"

  #RETURNING A VALUE
    def math.square(n)
    n*n
    end
    result = math.square(9)
    puts "Square is #{result}"

 #CREATING THE TICKET OBJECT
  ticket = Object.new
  def ticket.venue
  "Town Hall"
   end
  def ticket.performer
  "Mark Twain"
   end
  def ticket.event
  "Author's reading"
   end
  def ticket.price 
  5.50
  end
  def ticket.seat
  "Second Balcony, row J, seat 12"
   end
  def ticket.date
  "01/02/03"
   end

 #QUERYING THE TICKET OBJECT
  print "This ticket is for: "
  print ticket.event + ", at "
  print ticket.venue + ", on "
  puts ticket.date + "."
  print "The performer is "
  puts ticket.performer + "."
  print "The seat is "
  print ticket.seat + ", "
  print "and it costs $"
  puts "%.2f." % ticket.price

#IMPROVED TICKET SUMMARY WITH INTERPOLATION
puts "This ticket is for: #{ticket.event}, at #{ticket.venue}." +
     "The performer is #{ticket.performer}." +
     "The seat is #{ticket.seat}, " +
     "and it costs $#{"%.2f." % ticket.price}"

#TICKET AVAILABILITY STATUS
def ticket.availability_status
"sold"
end

#USING BOOLEAN METHOD IN CONDITIONAL
if ticket.available?
  puts "You're in luck!"
else
  puts "Sorry--that seat has been sold."
end

#STRING OBJECT ID
str = "Strings are objects too, and this is a string!"
puts "The id of the string object str is #{str.object_id}."

#UNIQUE OBJECT ID WITH object_id
obj = Object.new
puts "The id of obj is #{obj.object_id}."

#INTEGER OBJECT ID
puts "And the id of the integer 100 is #{100.object_id}."

#SAME OBJECT REFERENCED BY TWO VARIABLES
a = Object.new
b = a
puts "a's id is #{a.object_id} and b's id is #{b.object_id}."

#GET OBJECT ID
obj = Object.new
puts "The id of obj is #{obj.object_id}."

str = "Strings are objects too, and this is a string!"
puts "The id of the string object str is #{str.object_id}."

puts "And the id of the integer 100 is #{100.object_id}."

#TWO VARIABLES POINTING TO SAME OBJECT
a = Object.new
b = a
puts "a's id is #{a.object_id} and b's id is #{b.object_id}."


#DIFFERENT OBJECTS WITH SAME CONTENT
string_1 = "Hello"
string_2 = "Hello"
puts "string_1's id is #{string_1.object_id}."
puts "string_2's id is #{string_2.object_id}."

#USING respond_to? TO CHECK METHOD EXISTENCE
obj = Object.new
if obj.respond_to?("talk")
  obj.talk
else
  puts "Sorry, the object doesn't understand the 'talk' message."
end

#DYNAMIC METHOD CALL USING send
print "Information desired: "
request = gets.chomp
if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "No such information available"
end

#USING __send__ INSTEAD OF send
if ticket.respond_to?(request)
  puts ticket.__send__(request)
end


#USING public_send TO AVOID PRIVATE METHOD ACCESS
if ticket.respond_to?(request)
  puts ticket.public_send(request)
end
