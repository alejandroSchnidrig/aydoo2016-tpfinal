require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'

class Nave < ObjetoEspacial

  def initialize(vida = 100, masa = 100)
    super
    @efectos = {Nave => EfectoDestructivo.new(100)}	
  end

end
