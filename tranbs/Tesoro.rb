class Tesoro
	def initialize(nombre=nil,descripcion=nil)
		@nombre = nombre
		@descripcion = descripcion
	end

        
	def get_nombre
            return @nombre
	end
	
	def set_nombre(nombre)
	    @nombre = nombre       
	end

        def get_descripcion
            return @descripcion
	end
	
	def set_descripcion(descripcion)
	    @descripcion = descripcion       
	end

	def to_s #sobrescribimos el metodo por defecto to_s
		"El tesoro #{@nombre} es #{@descripcion}\n"
	end
end

mi_tesoro = Tesoro.new 
mi_tesoro.set_nombre("Kiko")
print "Mi tesoro se llama #{mi_tesoro.get_nombre} y es #{mi_tesoro.get_descripcion}\n";

tu_tesoro = Tesoro.new("Esperanza Gomez", "Es la mejor de las mejores")

puts tu_tesoro.to_s

#Metodo inspect muestra lo que hay en el objeto

puts "Inspeccionando el tesoro #{mi_tesoro.inspect}"
#Metodo de impresion abreviado
p(tu_tesoro)


















