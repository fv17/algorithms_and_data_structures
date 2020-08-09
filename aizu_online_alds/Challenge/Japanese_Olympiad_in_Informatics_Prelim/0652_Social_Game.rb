a, b, c = gets.split.map(&:to_i)

login_counts = 0
total_coins = 0

while total_coins < c
  login_counts += 1
  total_coins += a
  total_coins += b if login_counts % 7 == 0
end

puts login_counts
