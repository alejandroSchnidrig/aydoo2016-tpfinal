require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'asteroide' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    asteroide = Asteroide.new
    expect(asteroide.vida).to eq(100)
  end

end
