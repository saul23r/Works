class Cosa
	attr_reader :description
	attr_writer :description
	def initialize(description)
		@description = description
	end
end

tu_cosa = Cosa.new("Esta bien")
p(tu_cosa)
tu_cosa.description = "Mas o menos"
puts "Descripcion:#{tu_cosa.description}"
tu_cosa.description << ",pero todavia pasa." #Concatenamos una cadena a la cadena existente
puts "DEscripcion: #{tu_cosa.description}"
p(tu_cosa)
