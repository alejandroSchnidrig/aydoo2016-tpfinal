require 'rspec'
require 'spec_helper'
require_relative '../model/choques'
require_relative '../model/objeto_destruido_error'

describe 'choques' do

  it 'deberia quitarle 100 puntos de vida a una_nave que choca a otra_nave' do
    una_nave = Nave.new(15,10) 
    otra_nave = Nave.new(100,100)
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(una_nave.vida).to eq(0)
  end

  it 'deberia quitarle 100 puntos de vida a otra_nave que es chocada por una_nave' do
    una_nave = Nave.new(100,100)
    otra_nave = Nave.new(100,100)
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(otra_nave.vida).to eq(0)
  end

  it 'deberia ser destruida una_nave por el choque con otra nave' do
    una_nave = Nave.new(100,100)
    otra_nave = Nave.new(100,100)
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(una_nave.objeto_destruido?).to eq(true)
  end

  it 'deberia ser destruida otra_nave por el choque con otra nave' do
    una_nave = Nave.new(100,100)
    otra_nave = Nave.new(100,100)
    choque = Choques.new
    choque.choque(una_nave, otra_nave)
    expect(otra_nave.objeto_destruido?).to eq(true)
  end

  it 'deberia disminuir la masa de la nave al chocar con un asteroide' do
    nave = Nave.new(100,100)
    asteroide = Asteroide.new(100,100)
    choque = Choques.new
    choque.choque(nave, asteroide)
    expect(nave.masa).to eq(50)
  end
  
  it 'deberia aumentar la masa del asteroide al chocar con una nave' do
    nave = Nave.new(100,100)
    asteroide = Asteroide.new(100,100)
    choque = Choques.new
    choque.choque(nave, asteroide)
    expect(asteroide.masa).to eq(110)
  end

  it 'deberia ser nulo los efectos del choque en la vida de un mision con un asteroide' do
    misil = Misil.new(100,100)
    asteroide = Asteroide.new(100,100)
    choque = Choques.new
    choque.choque(misil, asteroide)
    expect(misil.vida).to eq(100)
    expect(asteroide.vida).to eq(100)
  end 

  it 'deberia ser nulo los efectos del choque en la masa de un mision con un asteroide' do
    misil = Misil.new(100,100)
    asteroide = Asteroide.new(100,100)
    choque = Choques.new
    choque.choque(misil, asteroide)
    expect(misil.masa).to eq(100)
    expect(asteroide.masa).to eq(100)
  end

  it 'deberia quitarle el 50% de la vida de la bomba al chocar con un misil' do
    misil = Misil.new(100,100)
    bomba = Bomba.new(100,100)
    bomba.vida=180
    choque = Choques.new
    choque.choque(misil, bomba)
    expect(bomba.vida).to eq (90)
  end

   it 'deberia quitarle el 100% de la vida de la bomba al chocar con una estrella' do
    estrella = Estrella.new(100,100)
    bomba = Bomba.new(100,100)
    choque = Choques.new
    choque.choque(bomba, estrella)
    expect(bomba.vida).to eq (0)
  end

  it 'deberia quitarle 80 puntos de vida a la nave al chocar con un misil' do
    nave = Nave.new(100,100)
    misil = Misil.new(100,100)
    choque = Choques.new
    choque.choque(nave, misil)
    expect(nave.vida).to eq(20)
  end

  it 'deberia quitarle 100 puntos de vida al misil al chocar con una nave' do
    nave = Nave.new(100,100)
    misil = Misil.new(100,100)
    choque = Choques.new
    choque.choque(nave, misil)
    expect(misil.vida).to eq(0)
  end

  it 'deberia agregarle la vida de la estrella a la nave al chocar' do
    nave = Nave.new(100,100)
    estrella = Estrella.new(100,100)
    estrella.vida=150
    choque = Choques.new
    choque.choque(nave, estrella)
    expect(nave.vida).to eq(250)
  end

  it 'deberia morir la estrella al chocar una nave' do
    nave = Nave.new(100,100)
    estrella = Estrella.new(100,100)
    estrella.vida=150
    choque = Choques.new
    choque.choque(estrella, nave)
    expect(estrella.vida).to eq(0)
  end

  it 'deberia no poderse realizar un choque si unos de los objetos esta destruido' do
    nave = Nave.new(100,100)
    misil = Misil.new(100,100)
    choque = Choques.new
    nave.vida=0
    expect{choque.choque(nave, misil)}.to raise_error(StandardError)
  end

end
