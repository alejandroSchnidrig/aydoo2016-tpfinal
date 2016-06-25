class ObjetoEspacial
 
  attr_accessor :vida, :masa
  attr_reader :esta_vivo

  def initialize(vida = 100, masa = 100)
    @vida = vida
    @masa = masa
    @esta_vivo = true
  end

  def vida=(vida)
    if(vida < 0)
      @vida = 0
      @esta_vivo = false
    elsif
      @vida = vida
    end
  end

  def masa=(masa)
    if(masa < 0)
      @masa = 0
      @esta_vivo = false
    elsif
      @masa = masa
    end
  end

end
