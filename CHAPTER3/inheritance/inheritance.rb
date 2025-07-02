class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end

class Ezine < Magazine
end
mag = Magazine.new
mag.publisher = "David A. Black"
mag.editor = "Joe Smith"

puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."

ez = Ezine.new
ez.publisher = "Ruby Weekly"
ez.editor = "Jane Doe"
puts "Ezine is published by #{ez.publisher}, and edited by #{ez.editor}."
