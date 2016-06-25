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

end
