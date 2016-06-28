require 'rspec'
require 'spec_helper'
require_relative '../model/choques'
require_relative '../model/objeto_destruido_error'

describe 'prueba_integral' do

  it 'una nave choca con un asteroide' do
    nave = Nave.new(100,100)
    asteroide = Asteroide.new(50,100)
    choque = Choques.new
    choque.choque(nave,asteroide)
   
    expect(nave.vida).to eq(100)
    expect(nave.masa).to eq(50)
    expect(asteroide.vida).to eq(50)
    expect(asteroide.masa).to eq(110)
  end

  it 'una estrella choca con un misil' do
    estrella = Estrella.new(50,10)
    misil = Misil.new(10,30)
    choque = Choques.new
    choque.choque(estrella,misil)

    expect(estrella.vida).to eq(50)
    expect(estrella.masa).to eq(10)
    expect(misil.vida).to eq(10)
    expect(misil.masa).to eq(30)
  end

  it 'una bomba choca con otra bomba' do
    bomba_uno = Bomba.new(200,90)
    bomba_dos = Bomba.new(20,45)
    choque = Choques.new
    choque.choque(bomba_uno,bomba_dos)
    
    expect(bomba_uno.vida).to eq(100)
    expect(bomba_uno.masa).to eq(90)
    expect(bomba_dos.vida).to eq(0)
    expect(bomba_dos.masa).to eq(45)
  end

end
