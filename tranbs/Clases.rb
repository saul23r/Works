class Perro
	def initialize(nombrep)
		@mi_nombrep = nombrep 
	end
	
	
     	 def set_nombrep(nombrep)

            @mi_nombrep = nombrep
     	 end

      	 def get_nombrep 

 	 return @mi_nombrep
	
       	end
	
	def ladrar
		puts "WuaWua"
	end
end

class Gato
	def initialize(nombrec)
		@mi_nombrec = nombrec 
	end
	
	
     	 def set_nombrec(nombrec)

            @mi_nombrec = nombrec
     	 end

      	 def get_nombrec 

 	 return @mi_nombrec
	
       	end
	
	def mauyar
		puts "Miau-miau"
	end
end


mi_perro = Perro.new("Firulais")
mi_perro.ladrar

puts "El nombre es :#{mi_perro.get_nombrep}"



mi_gato = Gato.new("Gatuno")
mi_gato.mauyar
puts "El nombre es :#{mi_gato.get_nombrec}"













