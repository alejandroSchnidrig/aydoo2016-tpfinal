require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_constructivo'

class Nave < ObjetoEspacial

  def initialize(vida, masa)
    super
    @efectos = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(80),
      Bomba => EfectoDestructivo.new(50),
      Asteroide => EfectoMasa.new(-50),
      Estrella => EfectoConstructivo.new
    }
  end

end
