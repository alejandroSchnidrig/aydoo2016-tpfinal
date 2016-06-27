require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_masa'

describe 'efecto_masa' do

  it 'deberia devolver su valor correctamente' do
    efecto = EfectoMasa.new(50)
    expect(efecto.masa).to eq(50)
  end

  it 'deberia modificar la masa de la nave al chocar con un asteroide correctemente' do
   efecto = EfectoMasa.new(-50)
   nave = Nave.new(100,100)
   asteroide = Asteroide.new(100,100)
   efecto.aplicar_efecto(nave, asteroide)
   expect(nave.masa).to eq(50)
  end
  
  it 'deberia modificar la masa del asteroide al chocar con una nave correctemente' do
   efecto = EfectoMasa.new(10)
   nave = Nave.new(100,100)
   asteroide = Asteroide.new(100,100)
   efecto.aplicar_efecto(asteroide, nave)
   expect(asteroide.masa).to eq(110)
  end

  it 'deberia destruir al elemento al tener masa negativa o cero' do
   efecto = EfectoMasa.new(-100)
   nave = Nave.new(100,100)
   asteroide = Asteroide.new(100,100)
   efecto.aplicar_efecto(nave, asteroide)
   expect(nave.objeto_destruido?).to eq(true)
  end

end
