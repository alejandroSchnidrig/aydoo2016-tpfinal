require_relative '../model/efecto'

class EfectoConstructivo 
  
  def aplicar_efecto(objeto_espacial_uno, objeto_espacial_dos)
    objeto_espacial_uno.vida += objeto_espacial_dos.vida
  end

end
