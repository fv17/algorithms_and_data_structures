n = gets.to_i

prices = []

n.times do
  prices.push(gets.to_i)
end

max = -1000000000
min_price = prices.first


1.upto(n - 1) do |index|
  max = prices[index] - min_price if prices[index] - min_price > max
  min_price = prices[index]  if min_price > prices[index]
end

puts max
