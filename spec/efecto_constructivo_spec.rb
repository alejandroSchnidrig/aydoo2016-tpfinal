require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_constructivo'

describe 'efecto_constructivo' do

  it 'deberia agregarle la vida a una nave que choca con una estrella correctamente' do
    efecto = EfectoConstructivo.new
    nave = Nave.new
    estrella = Estrella.new		
    efecto.aplicar_efecto(nave, estrella)
    expect(nave.vida).to eq(200)
  end

end
