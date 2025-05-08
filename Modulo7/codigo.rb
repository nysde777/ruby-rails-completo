# Requiere una gema (asegúrate de tenerla en tu Gemfile)
require "json"  # Parte de la biblioteca estándar, no necesita instalación

# Excepción personalizada
class ErrorCorreoInvalido < StandardError
  attr_reader :correo
  def initialize(correo)
    super("Correo inválido: #{correo}")
    @correo = correo
  end
end

# Clase con metaprogramación
class Validador
  # Definimos un método dinámico para validar correos
  define_method(:validar_correo) do |correo|
    email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    raise ErrorCorreoInvalido, correo unless correo =~ email_regex
    correo
  end

  # Maneja métodos no definidos
  def method_missing(nombre, *args)
    puts "Método #{nombre} no existe, argumentos: #{args.join(", ")}"
  end
end

# Guardar correos válidos en un archivo
validador = Validador.new
correos = ["ana@example.com", "invalido@com"]

begin
  correos.each do |correo|
    validado = validador.public_send(:validar_correo, correo)
    File.open("correos.txt", "a") do |archivo|
      archivo.puts validado
    end
  end
rescue ErrorCorreoInvalido => e
  puts "Error: #{e.message}"
rescue Errno::ENOENT
  puts "Error al escribir en el archivo"
end

# Leer y mostrar correos válidos
puts "Correos válidos guardados:"
File.foreach("correos.txt") { |linea| puts linea }

# Llamada a un método inexistente
validador.metodo_inexistente("prueba")  # Usa method_missing