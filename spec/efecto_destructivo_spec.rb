require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_destructivo'

describe 'efecto_destructivo' do

  it 'deberia devolver su valor correctamente' do
    efecto = EfectoDestructivo.new(100)
    expect(efecto.valor).to eq(100)
  end

end
