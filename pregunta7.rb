inventario = {"Notebooks": 4, "Pc_escritorio": 6, "Routers": 10, "Impresoras": 6}

puts " Digite una opcion de las siguientes:
          1 : para agregar agregar un item con su stock
          2 : eliminar item del inventario
          3 : actualizar informacion del inventario
          4 : visualizar el stock total del negocio
          5 : visualizar item con mayor stock en el negocio
          6 : consultar la existencia de un item en el inventario
          7 : salir"

option = gets.chomp.to_i
while option != 7
  if option == 1
      puts "Ingrese el item que desea agregar y su stock, separados por una coma (',')"
      a = gets.chomp.to_sym
      a_arr = a.split(',')
      inventario[a_arr[0]] = a_arr[-1]
      puts " Se a agregado #{a.split[0]} al inventario con un stock de #{a.split[-1]}"
      puts inventario

  elsif option == 2
      puts "Que item desea eliminar?"
      b = gets.chomp.capitalize.to_sym
      inventario.delete(b)
      puts "Usted a eliminado #{b} del inventario"
      puts inventario

  elsif option == 3
      puts "Digite el item que desea actualizar"
      b = gets.chomp.capitalize.to_sym
      puts "Cuanto es el stock de este item?"
      c = gets.chomp.to_f
      inventario[b] = c
      puts "El item #{b} se a actualizado"
      puts inventario

  elsif option == 4
      stock = inventario.values
      total = 0
      stock.each do |i|
        total = total + i
      end
      puts "El inventario posee stock total de #{total} unidades"

  elsif option == 5
      stock = inventario.values.sort
      b = inventario.key(stock[-1])
      puts " El item con mayor stock es #{b}"

  elsif option == 6
      puts "Que item busca?"
      b = gets.chomp.capitalize.to_sym
      if inventario.has_key?(b) == true
        puts "#{b} ésta en el inventario y posee un stock de #{inventario[b]}"
      else
        puts "#{b} no existe en el inventario"
      end
  end
  puts " Digite una opcion de las siguientes:
            1 : para agregar agregar un item con su stock
            2 : eliminar item del inventario
            3 : actualizar informacion del inventario
            4 : visualizar el stock total del negocio
            5 : visualizar item con mayor stock en el negocio
            6 : consultar la existencia de un item en el inventario
            7 : salir"
  option = gets.chomp.to_i
end

puts " Adios!"
