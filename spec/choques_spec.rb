require 'rspec'
require 'spec_helper'
require_relative '../model/choques'

describe 'choques' do

  it 'deberia quitarle 100 puntos de vida a una_nave que choca a otra_nave' do
    una_nave = Nave.new 
    otra_nave = Nave.new 
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(una_nave.vida).to eq(0)
  end

  it 'deberia quitarle 100 puntos de vida a otra_nave que es chocada por una_nave' do
    una_nave = Nave.new
    otra_nave = Nave.new
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(otra_nave.vida).to eq(0)
  end

  it 'deberia ser destruida una_nave por el choque' do
    una_nave = Nave.new
    otra_nave = Nave.new
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(una_nave.objeto_destruido?).to eq(true)
  end

  it 'deberia ser destruida otra_nave por el choque' do
    una_nave = Nave.new
    otra_nave = Nave.new
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(otra_nave.objeto_destruido?).to eq(true)
  end

end
