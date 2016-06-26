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
   nave = Nave.new
   asteroide = Asteroide.new
   asteroide.masa=50
   efecto.aplicar_efecto(nave, asteroide)
   expect(nave.masa).to eq(75)
  end

end
