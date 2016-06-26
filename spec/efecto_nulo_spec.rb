require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_nulo'

describe 'efecto_destructivo' do

  it 'deberia tener la misma vida la nave' do
    efecto = EfectoNulo.new(0)
    nave = Nave.new
    efecto.aplicar_efecto(nave, nil)
    expect(nave.vida).to eq(100)
  end

  it 'deberia tener la misma masa la nave' do
    efecto = EfectoNulo.new(0)
    nave = Nave.new
    efecto.aplicar_efecto(nave, nil)
    expect(nave.masa).to eq(100)
  end

end
