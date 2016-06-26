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

  it 'deberia disminuir la masa de la nave al chocar con un asteroide' do
    nave = Nave.new
    asteroide = Asteroide.new
    choque = Choques.new
    choque.choque(nave, asteroide)
    expect(nave.masa).to eq(50)
  end
  
  it 'deberia aumentar la masa del asteroide al chocar con una nave' do
    nave = Nave.new
    asteroide = Asteroide.new
    choque = Choques.new
    choque.choque(nave, asteroide)
    expect(asteroide.masa).to eq(110)
  end
  
end
