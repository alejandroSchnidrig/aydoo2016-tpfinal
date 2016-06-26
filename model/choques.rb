class Choques

  def choque(objeto_espacial_uno, objeto_espacial_dos)
    objeto_espacial_uno.choca_con(objeto_espacial_dos)
    objeto_espacial_dos.choca_con(objeto_espacial_uno)
  end

end  
