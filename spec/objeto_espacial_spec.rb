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

  it 'deberia ser 150 la vida al setearse nuevamente' do
    objeto_espacial = ObjetoEspacial.new
    objeto_espacial.vida=150
    expect(objeto_espacial.vida).to eq(150)
  end

  it 'deberia ser 150 la masa al setearse nuevamente' do
    objeto_espacial = ObjetoEspacial.new
    objeto_espacial.masa=150
    expect(objeto_espacial.masa).to eq(150)
  end

  it 'deberia ser 0 la vida al querer setearle un numero negativo' do
    objeto_espacial = ObjetoEspacial.new
    objeto_espacial.vida=-100
    expect(objeto_espacial.vida).to eq(0)
  end

  it 'deberia ser 0 la masa al querer setearle un numero negativo' do
    objeto_espacial = ObjetoEspacial.new
    objeto_espacial.masa=-100
    expect(objeto_espacial.masa).to eq(0)
  end
  
end
