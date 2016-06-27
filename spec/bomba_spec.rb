require 'rspec'
require 'spec_helper'
require_relative '../model/bomba'

describe 'bomba' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    bomba = Bomba.new(100,100)
    expect(bomba.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    bomba = Bomba.new(100,100)
    expect(bomba.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    bomba = Bomba.new(100,100)
    expect(bomba.objeto_destruido?).to eq(false)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    bomba = Bomba.new(100,100)
    bomba.vida=150
    expect(bomba.vida).to eq(150)
  end

  it 'deberia ser 150 la masa al setearse nuevamente' do
    bomba = Bomba.new(100,100)
    bomba.masa=150
    expect(bomba.masa).to eq(150)
  end

  it 'deberia no poder crearse una bomba con una vida o masa negativa' do
    expect{objeto = Bomba.new(-100,120)}.to raise_error(ArgumentError)
  end

end
