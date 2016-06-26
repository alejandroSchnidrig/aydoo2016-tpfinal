require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/misil'
require_relative '../model/nave'
require_relative '../model/asteroide'
require_relative '../model/estrella'

class Bomba < ObjetoEspacial

  def initialize(vida = 100, masa = 100)
    super
    @efectos = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(@vida/2),
      Bomba => EfectoDestructivo.new(100),
      Asteroide => EfectoDestructivo.new(@vida),
      Estrella => EfectoDestructivo.new(100)
    }
  end

end
