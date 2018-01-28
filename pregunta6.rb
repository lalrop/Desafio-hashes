restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1
valores_sort = restaurant_menu.values.sort
exp = valores_sort[-1]
puts restaurant_menu.key(exp)

# 2
chp = valores_sort[0]
puts restaurant_menu.key(chp)

# 3
def promedio(hash)
  a = hash.values
  suma = 0
  a.each do |i|
    suma = suma + i
  end
  puts "El promedio de los valores es #{suma/hash.values.size}"
end

promedio(restaurant_menu)

# 4

platos = restaurant_menu.keys
puts platos

# 5

valores = restaurant_menu.values
puts valores

# 6
restaurant_menu.each do |keys, values|
  restaurant_menu[keys] = values*1.19
end
puts restaurant_menu

# 7
restaurant_menu.each do |keys, value|
  if keys.include?(' ') == true
    restaurant_menu[keys] = value*0.8
  end
end
puts restaurant_menu
