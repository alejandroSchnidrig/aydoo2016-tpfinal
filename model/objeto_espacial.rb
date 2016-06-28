class ObjetoEspacial
 
  attr_accessor :vida, :masa
  attr_reader :esta_vivo

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @efectos = Hash.new
    actualizar_atributos
  end

  def vida=(vida)
    @vida = vida
    actualizar_atributos
  end

  def masa=(masa)
    @masa = masa
    actualizar_atributos
  end

  def objeto_destruido?
    return (vida <= 0) || (masa <= 0)
  end

  def choca_con(objeto_espacial)
    @efectos.fetch(objeto_espacial.class).aplicar_efecto(self, objeto_espacial)
    actualizar_atributos 
  end

  def agregar_choque(objeto_espacial, efecto)
    @efectos[objeto_espacial.class] = efecto
  end

  def actualizar_atributos
   if @vida < 0
     @vida = 0 
   elsif @masa < 0
     @masa = 0
   end
  end 

end
