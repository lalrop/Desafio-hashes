puts "/////////////////////////////////////////////////////////////////////////

                  Alumnos del curso
        Digite una de las siguientes opciones:
          1 : Ingresar datos alumno nuevo
          2 : Editar datos de un alumno
          3 : Eliminar
          4 : Numero de alumnos en sistema
          5 : Comunas de los alumnos
          6 : Alumnos entre 20 y 25 años
          7 : Suma de edades de todos los Alumnos
          8 : Promedio de edad del curso
          9 : Alumnos por genero
          10: Salir "

nombre = ['Jose','Miguel','Esteban','Filomena', 'Euslaquia', 'Sortilegio']
edad = [20, 23, 15, 17, 35, 42]
comuna = ['Cerrillos', 'Renca', 'Lo Barnechea']
genero = ['Masculino','Masculino','Masculino', 'Femenino','Femenino','Femenino']

curso = { nombre => [edad,comuna,genero]}

option = gets.chomp.to_i

while option != 10
  case option
    when 1
      puts 'Nombre : '
      a = gets.chomp.capitalize
      puts 'Edad : '
      b = gets.chomp.to_i
      puts 'Comuna : '
      c = gets.chomp.capitalize
      puts 'Genero : '
      d = gets.chomp.capitalize
      nombre.push(a)
      edad.push(b)
      comuna.push(c)
      genero.push(d)
      puts 'El alumno a sido agregado al curso'
      puts curso

    when 2
      puts curso
      puts '¿A que persona desea actualizar?'
      posicion = nombre.index(gets.chomp.capitalize)

      puts 'Esta su nombre correcto? señale si o no'
      nombre1 = gets.chomp.downcase
          if nombre1 == 'no'
          puts  'Ingrese nuevo nombre'
          nombre2 = gets.chomp.capitalize
          nombre.insert(posicion,nombre2)
          end

      puts 'Esta su edad correcto? señale si o no'
      edad1 = gets.chomp.downcase
          if edad1 == 'no'
          puts  'Ingrese nueva edad'
          edad2 = gets.chomp.to_i
          edad.insert(posicion,edad2)
          end

      puts 'Esta su comuna correcta? señale si o no'
      comuna1 = gets.chomp.downcase
          if comuna1 == 'no'
          puts  'Ingrese nueva comuna'
          comuna2 = gets.chomp.capitalize
          comuna.insert(posicion,comuna2)
          end

      puts 'Esta su genero correcto? señale si o no'
      genero1 = gets.chomp.downcase
          if genero1 == 'no'
          puts  'Ingrese nueva comuna'
          genero2 = gets.chomp.capitalize
          genero.insert(posicion,genero2)
          end

      puts curso

    when 3
      puts curso
      puts '¿A que persona desea eliminar?'
      posicion = nombre.index(gets.chomp.capitalize)
      nombre.delete_at(posicion)
      edad.delete_at(posicion)
      comuna.delete_at(posicion)
      genero.delete_at(posicion)
      puts 'El alumno a sido eliminado del curso'
      puts curso

    when 4
      cantidad = nombre.size
      puts "El curso tiene un total de #{cantidad} alumnos"

    when 5
      puts comuna.uniq

    when 6
      edad.each do |i|
        if i<25 and i>20
          puts nombre[edad.index(i)]
        end
      end

    when 7
      puts edad.inject(0){|sum,i| sum = sum + i }

    when 8
      puts edad.inject(0){|sum,i| sum = sum + i } / edad.size

    when 9
      curso_gen ={[genero] => [nombre, edad, comuna]}
      puts curso_gen


  end
puts "
        ////////////////////////////////////////////////////////////////////////

                  Alumnos del curso
          Digite una de las siguientes opciones:
            1 : Ingresar datos alumno nuevo
            2 : Editar datos de un alumno
            3 : Eliminar
            4 : Numero de alumnos en sistema
            5 : Comunas de los alumnos
            6 : Alumnos entre 20 y 25 años
            7 : Suma de edades de todos los Alumnos
            8 : Promedio de edad del curso
            9 : Alumnos por genero
            10: Salir "
  option = gets.chomp.to_i


end
