productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' =>
750}

# 1
productos.each { |valor, producto| puts valor }

# 2
productos['cereal'] = 2200
puts productos

# 3
productos['bebida'] = 2000
puts productos

# 4
b = productos.to_s
puts b.is_a? Hash
puts b.is_a? String

# 5
productos.delete('galletas')
puts productos
