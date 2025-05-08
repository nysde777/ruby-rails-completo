require "pp"
require "pry"

class ErrorUsuarioInvalido < StandardError
  attr_reader :usuario

  def initialize(usuario, mensaje = "Usuario inválido")
    super(mensaje)
    @usuario = usuario
  end
end

class Sistema
  def autenticar(usuario, contraseña)
    begin
      binding.pry  # Punto de depuración
      raise ErrorUsuarioInvalido, usuario, "Usuario vacío" if usuario.empty?
      raise "Contraseña incorrecta" unless contraseña == "secreto"
      puts "Autenticación exitosa para #{usuario}"
      true
    rescue ErrorUsuarioInvalido => e
      puts "Error: #{e.message} (Usuario: #{e.usuario})"
      false
    rescue StandardError => e
      puts "Error inesperado: #{e.message}"
      false
    ensure
      puts "Intento de autenticación finalizado"
    end
  end
end

# Depuración simple
sistema = Sistema.new
p sistema.autenticar("", "secreto")
pp sistema.autenticar("Ana", "secreto")