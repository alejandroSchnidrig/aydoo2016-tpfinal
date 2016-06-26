require_relative '../model/efecto'

class EfectoDestructivo < Efecto
  
  def aplicar_efecto(objeto_espacial_uno, objeto_espacial_dos)
    objeto_espacial_uno.vida -= valor
  end

end
