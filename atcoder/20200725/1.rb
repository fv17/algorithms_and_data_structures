x = gets.chomp.to_i

if x >= 400 && x <= 599
  puts "8"
elsif x >= 600 && x <= 799
  puts "7"
elsif x >= 800 && x <= 999
  puts "6"
elsif x >= 1000 && x <= 1199
  puts "5"
elsif x >= 1200 && x <= 1399
  puts "4"
elsif x >= 1400 && x <= 1599
  puts "3"
elsif x >= 1600 && x <= 1799
  puts "2"
elsif x >= 1800 && x <= 1999
  puts "1"
end
