require_relative '../model/parametros_invalidos_exception'

class ObjetoEspacial
 
  attr_accessor :vida, :masa
  attr_reader :esta_vivo

  def initialize(vida, masa)
    validar_vida(vida)
    validar_masa(masa)
    @vida = vida
    @masa = masa
    @esta_vivo = true
    @efectos = Hash.new
  end

  def vida=(vida)
    validar_vida(vida)
    @vida = vida
  end

  def masa=(masa)
    validar_masa(masa)
    @masa = masa
  end

  def objeto_destruido?
    return (vida <= 0) || (masa <= 0)
  end

  def choca_con(objeto_espacial)
    @efectos.fetch(objeto_espacial.class).aplicar_efecto(self, objeto_espacial)
  end

  def validar_vida(vida)
    raise ParametrosInvalidosException if vida < 0
  end

  def validar_masa(masa)
    raise ParametrosInvalidosException if masa < 0                 
  end


end
