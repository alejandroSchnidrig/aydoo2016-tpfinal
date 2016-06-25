require 'rspec'
require 'spec_helper'
require_relative '../model/objeto_espacial'

describe 'objeto_espacial' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    objeto_espacial = ObjetoEspacial.new
    expect(objeto_espacial.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    objeto_espacial = ObjetoEspacial.new
    expect(objeto_espacial.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    objeto_espacial = ObjetoEspacial.new
    expect(objeto_espacial.esta_vivo).to eq(true)
  end


end
