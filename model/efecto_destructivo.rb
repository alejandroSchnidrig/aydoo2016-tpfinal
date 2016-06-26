require_relative '../model/efecto'

class EfectoDestructivo < Efecto

  def initialize(vida_a_bajar)
    super
  end

  def aplicar_efecto(objeto_espacial_uno, objeto_espacial_dos)
    objeto_espacial_uno.vida -= vida_a_bajar
  end

end
