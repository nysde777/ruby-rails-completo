#Arimeticos
subtotal = 100
descuento = 15
total = subtotal - descuento
puts "Total: #{total}"

#comparacion
if total < 100
  puts "Compra economica"
end

# Logicos
if total >= 50 && descuento > 10
  puts "Buen descuento"
end