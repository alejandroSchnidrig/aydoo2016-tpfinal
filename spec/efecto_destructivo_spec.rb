require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_destructivo'

describe 'efecto_destructivo' do

  it 'deberia devolver su valor correctamente' do
    efecto = EfectoDestructivo.new(100)
    expect(efecto.valor).to eq(100)
  end

  it 'deberia quitarle vida a una nave correctamente' do
    efecto = EfectoDestructivo.new(50)
    nave = Nave.new
    efecto.aplicar_efecto(nave, nil)
    expect(nave.vida).to eq(50)
  end

  it 'deberia quitarle misil a una nave correctamente' do
    efecto = EfectoDestructivo.new(40)
    misil = Misil.new
    efecto.aplicar_efecto(misil, nil)
    expect(misil.vida).to eq(60)
  end


end
