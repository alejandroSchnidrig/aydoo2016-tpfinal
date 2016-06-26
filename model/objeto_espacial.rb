class ObjetoEspacial
 
  attr_accessor :vida, :masa
  attr_reader :esta_vivo

  def initialize(vida = 100, masa = 100)
    @vida = vida
    @masa = masa
    @esta_vivo = true
    @efectos = Hash.new
  end

  def vida=(vida)
    if(vida <= 0)
      @vida = 0
      @esta_vivo = false
    elsif
      @vida = vida
    end
  end

  def masa=(masa)
    if(masa <= 0)
      @masa = 0
      @esta_vivo = false
    elsif
      @masa = masa
    end
  end

  def objeto_destruido?
    return (vida <= 0) || (masa <= 0)
  end

  def choca_con(objeto_espacial)
    @efectos.fetch(objeto_espacial.class).aplicar_efecto(self, objeto_espacial)
  end

end
