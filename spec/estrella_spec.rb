require 'rspec'
require 'spec_helper'
require_relative '../model/estrella'

describe 'estrella' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    estrella = Estrella.new(100,100)
    expect(estrella.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    estrella = Estrella.new(100,100)
    expect(estrella.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    estrella = Estrella.new(100,100)
    expect(estrella.objeto_destruido?).to eq(false)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    estrella = Estrella.new(100,100)
    estrella.vida=150
    expect(estrella.vida).to eq(150)
  end  

  it 'deberia ser 150 la masa al setearse nuevamente' do
    estrella = Estrella.new(100,100)
    estrella.masa=150
    expect(estrella.masa).to eq(150)
  end

  it 'deberia no poder crearse una estrella con una vida o masa negativa' do
    estrella = Estrella.new(-100,80)
    expect(estrella.vida).to eq(0)
  end
 
end
