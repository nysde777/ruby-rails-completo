module Habilidades
  def programar
    "Escribiendo código"
  end
end

class Persona
  attr_reader :nombre

  def initialize(nombre)
    @nombre = nombre
  end

  def saludar
    "Hola, soy #{@nombre}"
  end

  private

  def secreto
    "Secreto personal"
  end
end

class Programador < Persona
  include Habilidades

  def initialize(nombre, lenguaje)
    super(nombre)
    @lenguaje = lenguaje
  end

  def saludar
    "#{super}, y programo en #{@lenguaje}"
  end

  def self.descripcion
    "Clase para programadores"
  end

  protected

  def lenguaje
    @lenguaje
  end
end

# Uso
puts Programador.descripcion  # => Clase para programadores

prog = Programador.new("Ana", "Ruby")
puts prog.saludar             # => Hola, soy Ana, y programo en Ruby
puts prog.programar          # => Escribiendo código
# prog.secreto               # Error: private
# prog.lenguaje              # Error: protected

# Polimorfismo
class Disenador
  def saludar
    "Hola, diseño interfaces"
  end
end

equipo = [Programador.new("Juan", "Python"), Disenador.new]
equipo.each { |miembro| puts miembro.saludar }
# => Hola, soy Juan, y programo en Python
# => Hola, diseño interfaces