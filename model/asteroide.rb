require_relative '../model/objeto_espacial'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_nulo'

class Asteroide < ObjetoEspacial

  def initialize(vida, masa)
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
