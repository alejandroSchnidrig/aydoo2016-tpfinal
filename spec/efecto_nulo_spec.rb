require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_nulo'

describe 'efecto_nulo' do

  it 'deberia tener la misma vida la nave' do
    efecto = EfectoNulo.new
    nave = Nave.new(100,100)
    misil = Misil.new(100,100)
    efecto.aplicar_efecto(nave, misil)
    expect(nave.vida).to eq(100)
  end

  it 'deberia tener la misma masa la nave' do
    efecto = EfectoNulo.new
    nave = Nave.new(100,100)
    misil = Misil.new(100,100)	
    efecto.aplicar_efecto(nave, misil)
    expect(nave.masa).to eq(100)
  end

  it 'deberia estar viva la nave' do
    efecto = EfectoNulo.new
    misil = Misil.new(100,100)
    nave = Nave.new(100,100)
    efecto.aplicar_efecto(nave, misil)
    expect(nave.objeto_destruido?).to eq(false)
  end

end
