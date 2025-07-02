class Ticket
    def event
        "cannot changed"
    end
end
ticket=Ticket.new
puts ticket.event

#singleton method
ticket1 = Object.new

def ticket1.price
  500
end
puts ticket1.price   
ticket2 = Object.new

