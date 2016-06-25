require 'rspec'
require 'spec_helper'
require_relative '../model/bomba'

describe 'bomba' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    bomba = Bomba.new
    expect(bomba.vida).to eq(100)
  end

  it 'deberia ser 100 la masa al momento de su creacion' do
    bomba = Bomba.new
    expect(bomba.masa).to eq(100)
  end

  it 'deberia estar vivo al momento de su creacion' do
    bomba = Bomba.new
    expect(bomba.esta_vivo).to eq(true)
  end

  it 'deberia ser 150 la vida al setearse nuevamente' do
    bomba = Bomba.new
    bomba.vida=150
    expect(bomba.vida).to eq(150)
  end

end
