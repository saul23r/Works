class Objeto

def initialize(position_x=nil, position_y=nil, weight=nil)
		@position_x=position_x
		@position_y=position_y
		@weigth=weight
end
	attr_reader :position_x
	attr_writer :position_x
		
	attr_reader :position_y
	attr_writer :position_y

	attr_reader :weigth
	attr_writer :weigth

end

class Weapon < Objeto

	def initialize(position_x=nil, position_y=nil, weigth=nil, damage=nil, success_msg=nil, failure_msg=nil )
		super(position_x, position_y, weigth)
		@damage=damage
		@success_msg=success_msg
		@failure_msg=failure_msg
	end

	attr_reader :damage
	attr_writer :damage
	
	attr_reader :success_msg
	attr_writer :success_msg
	
	attr_reader :failure_msg
	attr_writer :failure_msg


end

class Agent < Objeto
	
	def initialize(position_x=nil, position_y=nil, weigth=nil, health=nil, strength=nil, name=nil, current_weapon=nil)
	super(position_x, position_y, weigth)

	@health=health
	@strength=strength
	@name=name
	@current_weapon=current_weapon
	end



end



mi_objeto=Objeto.new(1,6,9)
p(mi_objeto)

mi_weapon=Weapon.new(8,9,6,"Success","Failed")
p(mi_weapon)

mi_agent=Agent.new(2,4,5,5,8, "Booky","Brazo de Hierro")
p(mi_agent)

 












