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

end
