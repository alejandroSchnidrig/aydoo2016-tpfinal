require_relative '../model/objeto_destruido_error'

class Choques

  def choque(objeto_espacial_uno, objeto_espacial_dos)

    raise ObjetoDestruidoError if objeto_espacial_uno.objeto_destruido? || objeto_espacial_dos.objeto_destruido?    

    objeto_espacial_uno_duplicado = objeto_espacial_uno.dup

    objeto_espacial_uno.choca_con(objeto_espacial_dos)
    objeto_espacial_dos.choca_con(objeto_espacial_uno_duplicado)
  end

end  
