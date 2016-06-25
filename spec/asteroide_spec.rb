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

end
