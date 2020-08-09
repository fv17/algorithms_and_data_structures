n = gets.to_i
pieces = gets.split.map(&:to_i)
m = gets.to_i
operations = gets.split.map(&:to_i)

operations.each do |i|
  pieces[i - 1] += 1 if !pieces.include?(pieces[i - 1] + 1) && pieces[i - 1] != 2019
end

puts pieces
