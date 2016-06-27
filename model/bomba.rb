require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_destructivo_por_porcentaje'
require_relative '../model/misil'
require_relative '../model/nave'
require_relative '../model/asteroide'
require_relative '../model/estrella'

class Bomba < ObjetoEspacial

  def initialize(vida = 100, masa = 100)
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
