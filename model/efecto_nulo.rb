require_relative '../model/efecto'

class EfectoNulo < Efecto

  def aplicar_efecto(objeto_espacial_uno, objeto_espacial_dos)
    "no aplica ningun efecto"
  end

end
