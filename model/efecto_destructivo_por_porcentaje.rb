require_relative '../model/efecto' 

class EfectoDestructivoPorPorcentaje < Efecto  

  attr_reader :vida

  def initialize(vida)
    @vida = vida;
  end
  
  def aplicar_efecto(objeto_espacial_uno, objeto_espacial_dos)
    objeto_espacial_uno.vida -= ((objeto_espacial_uno.vida * vida)/100)
  end

end
