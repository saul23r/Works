def area (b,h)
    area= b*h/2
    puts "#{b} * #{h}/2= #{area}"

end

puts "Ingresa la base del triangulo: "
base=gets.chomp.to_i
puts "Ingresa la altura del triangulo: "
altura=gets.chomp.to_i
area(base,altura)
