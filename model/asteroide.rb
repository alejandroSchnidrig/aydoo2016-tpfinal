require_relative '../model/objeto_espacial'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_nulo'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/nave'
require_relative '../model/estrella'

class Asteroide < ObjetoEspacial

  def initialize(vida = 100, masa = 100)
    super
    @efectos = {
      Nave => EfectoMasa.new(10),
      Misil => EfectoNulo.new,
      Bomba => EfectoNulo.new,
      Asteroide => EfectoNulo.new,
      Estrella => EfectoNulo.new
    }
  end

end
