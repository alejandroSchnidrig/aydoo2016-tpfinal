require 'rspec'
require 'spec_helper'
require_relative '../model/misil'

describe 'misil' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    misil = Misil.new
    expect(misil.vida).to eq(100)
  end

end
