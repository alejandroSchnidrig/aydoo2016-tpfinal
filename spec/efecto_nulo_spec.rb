require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_nulo'

describe 'efecto_destructivo' do

  it 'deberia tener la misma vida la nave' do
    efecto = EfectoNulo.new
    nave = Nave.new
    efecto.aplicar_efecto(nave, nil)
    expect(nave.vida).to eq(100)
  end

  it 'deberia tener la misma masa la nave' do
    efecto = EfectoNulo.new
    nave = Nave.new
    efecto.aplicar_efecto(nave, nil)
    expect(nave.masa).to eq(100)
  end

  it 'deberia estar viva la nave' do
    efecto = EfectoNulo.new
    nave = Nave.new
    efecto.aplicar_efecto(nave, nil)
    expect(nave.objeto_destruido?).to eq(false)
  end

end
