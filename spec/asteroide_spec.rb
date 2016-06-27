require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'asteroide' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    asteroide = Asteroide.new(100,100)
    expect(asteroide.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    asteroide = Asteroide.new(100,100)
    expect(asteroide.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    asteroide = Asteroide.new(100,100)
    expect(asteroide.objeto_destruido?).to eq(false)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    asteroide = Asteroide.new(100,100)
    asteroide.vida=150
    expect(asteroide.vida).to eq(150)
  end

  it 'deberia ser 150 la masa al setearse nuevamente' do
    asteroide = Asteroide.new(100,100)
    asteroide.masa=150
    expect(asteroide.masa).to eq(150)
  end

end
