require 'rspec'
require 'spec_helper'
require_relative '../model/estrella'

describe 'estrella' do

  it 'deberia ser 100 la vida al momento de su creacion' do
    estrella = Estrella.new
    expect(estrella.vida).to eq(100)
  end

end
