class ParametrosInvalidosException < ArgumentError

  def initialize(msg='La vida y la masa deben ser mayores a cero.')
    super
  end

end
