class Nave

  attr_accessor :vida, :masa
  attr_reader :esta_vivo

  def initialize(vida = 100, masa = 100)
    @vida = vida
    @masa = masa
    @esta_vivo = true
  end

end
