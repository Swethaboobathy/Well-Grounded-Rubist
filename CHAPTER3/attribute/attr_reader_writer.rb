class Ticket
  attr_reader :venue, :price
  attr_writer :price

  def initialize(venue, price)
    @venue = venue
    @price = price
  end
end

ticket = Ticket.new("Concert Hall", 150)
puts ticket.venue
ticket.price = 200
puts ticket.price
