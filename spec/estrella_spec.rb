require 'rspec'
require 'spec_helper'
require_relative '../model/estrella'

describe 'estrella' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    estrella = Estrella.new
    expect(estrella.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    estrella = Estrella.new
    expect(estrella.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    estrella = Estrella.new
    expect(estrella.esta_vivo).to eq(true)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    estrella = Estrella.new
    estrella.vida=150
    expect(estrella.vida).to eq(150)
  end  

  it 'deberia ser 150 la masa al setearse nuevamente' do
    estrella = Estrella.new
    estrella.masa=150
    expect(estrella.masa).to eq(150)
  end

  it 'deberia ser 0 la vida al querer setearle un numero negativo' do
    estrella = Estrella.new
    estrella.vida=-100
    expect(estrella.vida).to eq(0)
  end

  it 'deberia ser 0 la masa al querer setearle un numero negativo' do
    estrella = Estrella.new
    estrella.masa=-100
    expect(estrella.masa).to eq(0)
  end

  it 'deberia estar muerto si se setea una vida negativa o cero' do
    estrella = Estrella.new
    estrella.vida=-100
    expect(estrella.esta_vivo).to eq(false)
  end   

  it 'deberia estar muerto si se setea una masa negativa o cero' do
    estrella = Estrella.new
    estrella.masa=-100
    expect(estrella.esta_vivo).to eq(false)
  end
 
end
