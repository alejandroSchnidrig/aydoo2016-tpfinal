class Nave

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
    elsif
      @vida = vida
    end
  end

end
