class Persona
	def initialize (nombre,genero,edad)
		@miNombre = nombre
		@miGenero = genero
		@miEdad = edad
	end

	def setNombre(nombre)
		@miNombre = nombre
	end
	
	def getNombre
		return @miNombre
	end

	def setGenero(genero)
		@miGenero = genero
	end
	
	def getGenero
		return @miGenero
	end
        
        def setEdad(edad)
		@miEdad = edad
	end
	
	def getEdad
		return @miEdad
	end

end
myPersona = Persona.new("Saul","Masculino","20")
puts "Teclea el nombre de la Persona"
myPersona.setNombre(gets.chomp)
puts "Teclea el genero de la Persona"
myPersona.setGenero(gets.chomp)
puts "Teclea la Edad de la Persona"
myPersona.setEdad(gets.chomp)
puts "El nombre es: #{myPersona.getNombre}"
puts "El genero es: #{myPersona.getGenero}"
puts "La edad es: #{myPersona.getEdad}"
