a, b = gets.chomp.split.map(&:to_i)
product = a * b

if product.even?
  puts "Even"
else
  puts "Odd"
end
