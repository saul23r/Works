class Person
  #Constructor

  def initialize(name)

  end

      #Redefinicion del metodo new para enviar nil
      #en caso de que el nombre este vacio.


    def self.new(name)
          return nil if name.empty?
          super
    end





end