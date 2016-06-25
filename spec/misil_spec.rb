require 'rspec'
require 'spec_helper'
require_relative '../model/misil'

describe 'misil' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    misil = Misil.new
    expect(misil.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    misil = Misil.new
    expect(misil.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    misil = Misil.new
    expect(misil.esta_vivo).to eq(true)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    misil = Misil.new
    misil.vida=150
    expect(misil.vida).to eq(150)
  end

  it 'deberia ser 150 la masa al setearse nuevamente' do
    misil = Misil.new
    misil.masa=150
    expect(misil.masa).to eq(150)
  end

  it 'deberia ser 0 la vida al querer setearle un numero negativo' do
    misil = Misil.new
    misil.vida=-100
    expect(misil.vida).to eq(0)
  end

  it 'deberia ser 0 la masa al querer setearle un numero negativo' do
    misil = Misil.new
    misil.masa=-100
    expect(misil.masa).to eq(0)
  end

  it 'deberia estar muerto si se setea una vida negativa o cero' do
    misil = Misil.new
    misil.vida=-100
    expect(misil.esta_vivo).to eq(false)
  end

  it 'deberia estar muerto si se setea una masa negativa o cero' do
    misil = Misil.new
    misil.masa=-100
    expect(misil.esta_vivo).to eq(false)
  end

end
