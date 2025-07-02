class TravelAgentSession
  def year=(y)
    @year = y.to_i
    if @year < 100
      @year += 2000 
    end
  end

  def year
    @year
  end
end

session = TravelAgentSession.new
session.year = "25"
puts session.year   
