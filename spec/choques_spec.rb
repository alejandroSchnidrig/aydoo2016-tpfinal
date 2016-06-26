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

  it 'deberia ser destruida una_nave por el choque con otra nave' do
    una_nave = Nave.new
    otra_nave = Nave.new
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(una_nave.objeto_destruido?).to eq(true)
  end

  it 'deberia ser destruida otra_nave por el choque con otra nave' do
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

  it 'deberia ser nulo los efectos del choque en la vida de un mision con un asteroide' do
    misil = Misil.new
    asteroide = Asteroide.new
    choque = Choques.new
    choque.choque(misil, asteroide)
    expect(misil.vida).to eq(100)
    expect(asteroide.vida).to eq(100)
  end 

  it 'deberia ser nulo los efectos del choque en la masa de un mision con un asteroide' do
    misil = Misil.new
    asteroide = Asteroide.new
    choque = Choques.new
    choque.choque(misil, asteroide)
    expect(misil.masa).to eq(100)
    expect(asteroide.masa).to eq(100)
  end

  it 'deberia quitarle el 50% de la vida de la bomba al chocar con un misil' do
    misil = Misil.new
    bomba = Bomba.new
    choque = Choques.new
    choque.choque(misil, bomba)
    expect(bomba.vida).to eq (50)
  end

   it 'deberia quitarle el 100% de la vida de la bomba al chocar con una estrella' do
    estrella = Estrella.new
    bomba = Bomba.new
    choque = Choques.new
    choque.choque(bomba, estrella)
    expect(bomba.vida).to eq (0)
  end

end
