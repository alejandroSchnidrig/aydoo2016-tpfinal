require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_destructivo_por_porcentaje'

class Bomba < ObjetoEspacial

  def initialize(vida, masa)
    super
    @efectos = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivoPorPorcentaje.new(50),
      Bomba => EfectoDestructivo.new(100),
      Asteroide => EfectoDestructivoPorPorcentaje.new(100),
      Estrella => EfectoDestructivo.new(100)
    }
  end

end
