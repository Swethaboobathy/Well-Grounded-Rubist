class Ticket
  def event
    "Old Event"
  end
end

class Ticket
  def event
    "Updated Event"
  end
end

puts Ticket.new.event  
