# Método con argumentos por defecto y retorno implícito
def saludar_usuario(nombre = "Invitado", saludo: "Hola")
  "#{saludo}, #{nombre}!"
end

# Método con yield
def repetir_accion(veces)
  veces.times { yield if block_given? }
end

# Método con argumentos variables
def combinar(*elementos, separador: ", ")
  elementos.join(separador)
end

# Proc y Lambda
duplicar = Proc.new { |x| x * 2 }
cuadrado = ->(x) { x ** 2 }

# Uso
puts saludar_usuario("Ana")                    # => Hola, Ana!
puts saludar_usuario(saludo: "Bienvenida")     # => Bienvenida, Invitado!

repetir_accion(2) { puts "¡Acción!" }
# => ¡Acción!
# => ¡Acción!

puts combinar("a", "b", "c", separador: " - ") # => a - b - c
puts [1, 2, 3].map(&duplicar)                 # => [2, 4, 6]
puts [1, 2, 3].map(&cuadrado)                 # => [1, 4, 9]