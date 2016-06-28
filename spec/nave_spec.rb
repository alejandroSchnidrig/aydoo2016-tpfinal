require 'rspec'
require 'spec_helper'
require_relative '../model/nave'

describe 'nave' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    nave = Nave.new(100,100)
    expect(nave.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    nave = Nave.new(100,100)
    expect(nave.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    nave = Nave.new(100,100)
    expect(nave.objeto_destruido?).to eq(false)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    nave = Nave.new(100,100)
    nave.vida=150
    expect(nave.vida).to eq(150)
  end

  it 'deberia ser 150 la masa al setearse nuevamente' do
    nave = Nave.new(100,100)
    nave.masa=150
    expect(nave.masa).to eq(150)
  end

  it 'deberia no poder crearse una nave con una vida o masa negativa' do
    nave = Nave.new(-100,80)
    expect(nave.vida).to eq(0)
  end

end
