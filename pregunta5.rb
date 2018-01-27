meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = meses.zip(ventas).to_h
puts h

# 1
c = h.invert
puts c

# 2
mayor = c.keys.sort[-1]
puts c[mayor]
