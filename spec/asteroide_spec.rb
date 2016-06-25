require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'asteroide' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    asteroide = Asteroide.new
    expect(asteroide.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    asteroide = Asteroide.new
    expect(asteroide.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    asteroide = Asteroide.new
    expect(asteroide.esta_vivo).to eq(true)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    asteroide = Asteroide.new
    asteroide.vida=150
    expect(asteroide.vida).to eq(150)
  end

  it 'deberia ser 150 la masa al setearse nuevamente' do
    asteroide = Asteroide.new
    asteroide.masa=150
    expect(asteroide.masa).to eq(150)
  end

  it 'deberia ser 0 la vida al querer setearle un numero negativo' do
    asteroide = Asteroide.new
    asteroide.vida=-100
    expect(asteroide.vida).to eq(0)
  end

  it 'deberia ser 0 la masa al querer setearle un numero negativo' do
    asteroide = Asteroide.new
    asteroide.masa=-100
    expect(asteroide.masa).to eq(0)
  end

  it 'deberia estar muerto si se setea una vida negativa o cero' do
    asteroide = Asteroide.new
    asteroide.vida=-100
    expect(asteroide.esta_vivo).to eq(false)
  end 

  it 'deberia estar muerto si se setea una masa negativa o cero' do
    asteroide = Asteroide.new
    asteroide.masa=-100
    expect(asteroide.esta_vivo).to eq(false)
  end

end
