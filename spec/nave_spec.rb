require 'rspec'
require 'spec_helper'
require_relative '../model/nave'

describe 'nave' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    nave = Nave.new
    expect(nave.vida).to eq(100)
  end

end
