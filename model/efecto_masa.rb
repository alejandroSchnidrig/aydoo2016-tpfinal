class EfectoMasa

  attr_reader :masa

  def initialize(masa)
    @masa = masa
  end

  def aplicar_efecto(objeto_espacial_uno, objeto_espacial_dos)
    objeto_espacial_uno.masa += ((objeto_espacial_dos.masa * masa)/100)
  end

end
