require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_nulo'

class Misil < ObjetoEspacial

  def initialize(vida, masa)
    super
    @efectos = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(100),
      Bomba => EfectoNulo.new,
      Asteroide => EfectoNulo.new,
      Estrella => EfectoNulo.new
    }
  end

end
