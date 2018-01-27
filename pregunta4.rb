personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

# 1
personas_hash = personas.zip(edades).to_h
puts  personas_hash

# 2
def promedio(hash)
  a = hash.values
  suma = 0
  a.each do |i|
    suma = suma + i
  end
  print suma/hash.values.size
end

promedio(personas_hash)
