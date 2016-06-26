require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_nulo'
require_relative '../model/nave'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/estrella'


class Misil < ObjetoEspacial

  def initialize(vida = 100, masa = 100)
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
