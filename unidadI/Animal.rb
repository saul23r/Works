class Animal
      def initialize(nombre,tipo)
            @miNombre = nombre
            @miTipo = tipo
      end

      def setTipo(tipo)
            @miTipo = tipo
      end

      def getTipo 
 	return @miTipo
      end


      def setNombre(nombre)
               @miNombre = nombre
      end
      def getNombre
            return @miNombre
      end

      def hacerSonido
              puts "Hace Sonido"
      end
end

miAnimal = Animal.new("Firulais","Perro")
miAnimal.hacerSonido
puts "El nombre es: #{miAnimal.getNombre}"
puts "Teclea el nombre del Animal"
miAnimal.setNombre(gets.chomp)
puts "El nombre es: #{miAnimal.getNombre}"
puts "El tipo es: #{miAnimal.getTipo}"
