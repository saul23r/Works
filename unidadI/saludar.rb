def saludar(nombre)
               puts "Hola #{nombre}".center(80, ' ')
               puts "\n\n\n\t Teclea para continuar"
               gets.chomp 
               system('clear')
end
puts "Teclea tu nombre: "
nombre = gets.chomp
saludar(nombre)
