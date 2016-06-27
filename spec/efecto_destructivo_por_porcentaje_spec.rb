require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_destructivo_por_porcentaje'

describe 'efecto_destructivo_por_porcentaje' do

  it 'deberia devolver su valor correctamente' do
    efecto = EfectoDestructivoPorPorcentaje.new(100)
    expect(efecto.vida).to eq(100)
  end

  it 'deberia destruir a la estrella al chocar con una nave' do
    efecto = EfectoDestructivoPorPorcentaje.new(100)
    nave = Nave.new
    estrella = Estrella.new		
    efecto.aplicar_efecto(estrella, nave)
    expect(estrella.vida).to eq(0)
  end

end
