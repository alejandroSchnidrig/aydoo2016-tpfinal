require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_nulo'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/nave'

class Estrella < ObjetoEspacial

  def initialize(vida = 100, masa = 100)
    super
     @efectos = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoNulo.new,
      Bomba => EfectoDestructivo.new(100),
      Asteroide => EfectoDestructivo.new(100),
      Estrella => EfectoDestructivo.new(100)
    }
  end

end
