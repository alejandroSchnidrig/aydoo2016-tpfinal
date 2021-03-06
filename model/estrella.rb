require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_destructivo_por_porcentaje'
require_relative '../model/efecto_nulo'

class Estrella < ObjetoEspacial

  def initialize(vida, masa)
    super
     @efectos = {
      Nave => EfectoDestructivoPorPorcentaje.new(100),
      Misil => EfectoNulo.new,
      Bomba => EfectoDestructivoPorPorcentaje.new(100),
      Asteroide => EfectoDestructivoPorPorcentaje.new(100),
      Estrella => EfectoDestructivoPorPorcentaje.new(100)
    }
  end

end
