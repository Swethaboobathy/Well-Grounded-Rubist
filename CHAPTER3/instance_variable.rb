class Person
    def set_name(string)
        puts "setting the name.. "
        @name=string
    end
    def get_name
        puts"returning person name.."
        @name
    end
end
swe=Person.new
swe.set_name(swe)
puts swe.get_name