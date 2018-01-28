nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

# 1
b = nombres.select{ |i| i.length > 5}
puts b

# 2
b = nombres.map { |i| i.downcase}
puts b

# 3
b = nombres.select {|i| i.include? "P"}
puts b

# 4
b = nombres.map {|i| i.length}
puts b

# 5
b = nombres.map {|i| i.gsub(/[AEIOUaeiou]/,"")}
puts b
