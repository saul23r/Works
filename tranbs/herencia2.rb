class Vehiculo
	def initialize (dueno=nil, puertas=nil, ruedas=nil)	
			@dueno= dueno
			@puertas= puertas
			@ruedas = ruedas
	end
	def caracteristicas
		return "Las caracteristicas del vehiculo son....."
	end

	attr_reader :dueno
	attr_writer :dueno
		
	attr_reader :puertas
	attr_writer :puertas

	attr_reader :ruedas
	attr_writer :ruedas
	
	
end

class Automovil < Vehiculo 

	def initialize(dueno=nil, puertas=nil, ruedas=nil, descapotable=nil)
	 	super(dueno, puertas, ruedas)
		@descapotable = descapotable
        end
  
        attr_reader :descapotable
	attr_writer :descapotable
	

	
	def subir 
		puts "Subiendo Automovil"
	end
	def bajar 
		puts "Bajando Automovil"
	end


end



class Camioneta < Vehiculo
	def initialize(dueno=nil, puertas=nil, ruedas=nil, tara=nil, carga=0)
			super(dueno,puertas,ruedas)
			@tara=tara
			@carga=carga
	end
	attr_reader :tara
	attr_writer :tara
		
	attr_reader :carga
	attr_writer :carga
			
	
	def cargar(kilos)
		@carga+=kilos
        end

end


mi_auto = Automovil.new("Juan Perez",5,4,false)
p(mi_auto)


mi_camioneta = Camioneta.new("Maria Sanchez", 2, 4, 1000, 0 )
mi_camioneta.cargar(200)
puts "La camioneta tiene una carga de #{mi_camioneta.carga} kilos\n"


mi_camioneta.cargar(300)
puts "La camioneta tiene una carga de #{mi_camioneta.carga} kilos\n"

mi_camioneta.tara = 3000
puts "La tara de Camioneta es #{mi_camioneta.tara}"





























