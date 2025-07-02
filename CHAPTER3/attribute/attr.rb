class Ticket
  attr :venue               
  attr :price, true         

  def initialize(venue, price)
    @venue = venue
    @price = price
  end
end

ticket = Ticket.new("Opera House", 250)
puts ticket.venue           
ticket.price = 300
puts ticket.price           
