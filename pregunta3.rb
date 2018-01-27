h = {"x": 1, "y":2}

h[:z]=3
puts h

h[:x] = 5
puts h

h.delete(:y)
puts h

h.each do |key, value|
  if key == :z
    puts "yeaaaah"
  end
end

c = h.invert
puts h
puts c
