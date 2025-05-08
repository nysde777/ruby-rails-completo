# Crear y manipular un hash
estudiante = { nombre: "Juan", curso: "Ruby", nota: 95 }
estudiante[:nota] = 98
estudiante[:aprobado] = true
puts estudiante  # => { nombre: "Juan", curso: "Ruby", nota: 98, aprobado: true }

# Métodos
puts estudiante.keys  # => [:nombre, :curso, :nota, :aprobado]
puts estudiante.has_value?(98)  # => true
estudiante.delete(:aprobado)
puts estudiante  # => { nombre: "Juan", curso: "Ruby", nota: 98 }

# Array
numeros = [1, 2, 3, 4, 5]
numeros.each { |n| puts n }  # Imprime 1, 2, 3, 4, 5
doblados = numeros.map { |n| n * 2 }  # => [2, 4, 6, 8, 10]
pares = numeros.select { |n| n.even? }  # => [2, 4]
suma = numeros.reduce(0) { |sum, n| sum + n }  # => 15

# Hash
config = { tema: "oscuro", idioma: "es", notificaciones: true }
config.each { |k, v| puts "#{k}: #{v}" }
claves = config.map { |k, v| k }  # => [:tema, :idioma, :notificaciones]
verdaderos = config.select { |k, v| v == true }  # => { notificaciones: true }

# Crear colecciones
inventario = ["manzana", "banana", "manzana", "naranja"]
precios = { manzana: 0.5, banana: 0.3, naranja: 0.4 }
personas = [
  { nombre: "Ana", edad: 25 },
  { nombre: "Juan", edad: 30 },
  { nombre: "Clara", edad: 20 }
]
# Ordenar por edad
ordenadas = personas.sort_by { |p| p[:edad] }
puts ordenadas  # => [{ nombre: "Clara", edad: 20 }, { nombre: "Ana", edad: 25 }, { nombre: "Juan", edad: 30 }]

# Filtrar mayores de 25
mayores = personas.select { |p| p[:edad] > 25 }
puts mayores  # => [{ nombre: "Juan", edad: 30 }]

# Manipulación
inventario << "pera"
precios[:pera] = 0.6
puts "Inventario: #{inventario.join(", ")}"
puts "Precios: #{precios}"

# Iteradores
total = inventario.reduce(0) { |sum, fruta| sum + precios[fruta.to_sym] }
puts "Costo total: $#{total.round(2)}"

# Ordenación y filtrado
frutas_unicas = inventario.uniq.sort
puts "Frutas únicas: #{frutas_unicas}"

caras = precios.select { |fruta, precio| precio > 0.4 }
puts "Frutas caras: #{caras}"