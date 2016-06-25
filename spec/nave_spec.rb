require 'rspec'
require 'spec_helper'
require_relative '../model/nave'

describe 'nave' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    nave = Nave.new
    expect(nave.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    nave = Nave.new
    expect(nave.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    nave = Nave.new
    expect(nave.esta_vivo).to eq(true)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    nave = Nave.new
    nave.vida=150
    expect(nave.vida).to eq(150)
  end

  it 'deberia ser 150 la masa al setearse nuevamente' do
    nave = Nave.new
    nave.masa=150
    expect(nave.masa).to eq(150)
  end

end
