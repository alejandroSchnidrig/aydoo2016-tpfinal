require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_masa'

describe 'efecto_masa' do

  it 'deberia devolver su valor correctamente' do
    efecto = EfectoMasa.new(50)
    expect(efecto.masa).to eq(50)
  end

end
